module NewclearHelper

  NUKE_MESSAGE = <<-eos
     *********************************
             N U K E  COMPLETE
     *********************************
  eos

  def nuke_project
    puts "\nCleaning Project..."
    `rake clean:all`

    unless is_android?
      puts "\nResetting simulator..."
      `reset-sim`
    end

    # Fast bundle
    puts "\nBundling..."
    `bundle install --jobs=3 --retry=3`

    # iOS Depencies
    if has_task? "pod:install"
      puts "\nSetting up cocoapods..."
      `pod setup`
      puts "\nInstalling cocoapod dependencies..."
      `rake pod:install`
    end

    # Android Dependencies
    if has_task? "gradle:install"
      puts "\nSetting up gradle automation dependencies..."
      `rake gradle:install`
    end
  end

  def build_project
    puts "Building project..."
    if is_android? and !running_genymotion?
      puts "for device"
      exec('rake device')
    else
      exec('rake')
    end
  end

  def has_task?(task_name)
    Rake.application.tasks.count{ |rt| rt.name == task_name} > 0
  end

  def is_android?
    @android ||= system("rake -T | grep -q .apk")
  end

  # We assume they keep their API in the emulator name
  def running_genymotion?
    genymotion_active = false
    if system("which VBoxManage > /dev/null")
      running_vms = `VboxManage list runningvms`
      vm_ids = running_vms.scan(/({[^}]+})\n/).flatten # get all VM IDs
      # check all to see if any are Genymotion VMs
      vm_ids.each do |vm_id|
        genymotion_active = true if system("VBoxManage showvminfo #{vm_id} | grep -q Genymotion")
      end
    end

    # Return our findings
    genymotion_active
  end
end