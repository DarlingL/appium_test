require "appium_lib"

def caps
  { caps: { deviceName: 'Droid25',
            platformName: "Android",
            app: (File.join(File.dirname(__FILE__), "TrianguloApp.apk")),
            appPackage: 'com.eliasnogueira.trianguloapp',
            appActivity: 'com.eliasnogueira.trianguloapp.MainActivity',
            newCommandTimeout: "3600",
            appium_lib: {
                wait: 0,
                debug: false
            }
  }
  }
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object