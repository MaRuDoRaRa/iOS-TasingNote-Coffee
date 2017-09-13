# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'TastingNote-Coffee' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for TastingNote-Coffee
  pod 'R.swift'
  pod 'RxSwift'
  pod 'SwiftyUserDefaults'
  pod 'Nuke'
  pod 'APIKit'
  pod 'Himotoki'
  pod 'Action'

  def testing_pods
    pod 'Quick'
    pod 'Nimble'
  end

  target 'TastingNote-CoffeeTests' do
    inherit! :search_paths
    testing_pods
  end

  target 'TastingNote-CoffeeUITests' do
    inherit! :search_paths
    testing_pods
  end

end
