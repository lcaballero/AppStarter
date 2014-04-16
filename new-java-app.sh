
if [ $# -eq 0 ]
then
	cat <<EOF

Usage:
%> new-java-app [groupId] [artifactId]

EOF
	exit 1
fi

mvn archetype:generate             \
  -DarchetypeGroupId=AppStarter    \
  -DarchetypeArtifactId=AppStarter \
  -DarchetypeVersion=1.0-SNAPSHOT  \
  -DgroupId=$1                     \
  -DartifactId=$2

