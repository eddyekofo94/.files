if dot::os::mac; then
    fish_add_path /usr/local/opt/openjdk@8/bin
else
    set -Ux JAVA_HOME /usr/lib/jvm/java-17-openjdk-amd64
fi
