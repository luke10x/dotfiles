 #!/bin/bash

JAR="$HOME/opt/jdt-language-server-1.9.0-202203031534/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar"
java \
  -Declipse.application=org.eclipse.jdt.ls.core.id1 \
  -Dosgi.bundles.defaultStartLevel=4 \
  -Declipse.product=org.eclipse.jdt.ls.core.product \
  -Dlog.protocol=true \
  -Dlog.level=ALL \
  -Xms1g \
  -Xmx2G \
  -javaagent:$HOME/.m2/repository/org/projectlombok/lombok/1.18.24/lombok-1.18.24.jar \
  -Xbootclasspath/a:$HOME/.m2/repository/org/projectlombok/lombok/1.18.24/lombok-1.18.24.jar \
  -jar $(echo "$JAR") \
  -configuration "$HOME/opt/jdt-language-server-1.9.0-202203031534/config_mac" \
  -data "$1" \
  --add-modules=ALL-SYSTEM \
  --add-opens java.base/java.util=ALL-UNNAMED \
  --add-opens java.base/java.lang=ALL-UNNAMED

#  -javaagent:/home/jemag/.config/nvim/dependencies/lombok.jar \
#  -Xbootclasspath/a:/home/jemag/.config/nvim/dependencies/lombok.jar \
