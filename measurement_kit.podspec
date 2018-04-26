Pod::Spec.new do |s|
  s.name = "measurement_kit"
  s.version = "0.9.0-alpha-ios.4"
  s.summary = "Portable network measurement library"
  s.author = "Simone Basso",
             "Arturo Filastò",
             "Davide Allavena",
             "Carmine D'Amico",
             "Leonid Evdokimov",
             "Antonio Langiu",
             "Lorenzo Primiterra",
             "Alessandro Quaranta"
  s.homepage = "https://github.com/measurement-kit"
  s.license = { :type => "BSD" }
  s.source = {
    :git => "https://github.com/basseosimone/ios-libs.git",
    :tag => "v#{s.version}"
  }
  s.prepare_command = <<-CMD
    ./script/make-frameworks
  CMD
  s.platform = :ios, "9.0"
  s.vendored_framework = "Frameworks/*.framework"
end
