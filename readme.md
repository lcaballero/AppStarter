# Overview

This project is a Maven Archetype for a boiler-plate project that hase these features:

1. Has the latest `JUnit` (4.11 as of 04/05/2014).
1. Makes use of the `Hamcrest` matcher library.
1. Also includes the `Mockito` library for mocking and spying.
1. Uses Google `Guice` for dependency injection.
1. Comes with `Gson` for doing Json encoding/decoding.
1. Include `Guava` for the numerous things that Google's guava helps with.

## Setup

Clone the repo:

```
%> git clone [the-git-remote-url]
```

In the directory created from the git clone (by default will be a directory called AppStarter),
run maven install to place a jar for the archetype in the local maven repository on the
machine.

```
%> mvn install
```

Create a new project using the archetype by filling in the `GroupId` and the `ArtifactId`.

```
%> mvn archetype:generate             \
     -DarchetypeGroupId=AppStarter    \
     -DarchetypeArtifactId=AppStarter \
     -DarchetypeVersion=1.0-SNAPSHOT  \
     -DgroupId=[your-groupId]         \
     -DartifactId=[your-artifactId]
```

From within the newly created project run a few commands to make sure the project was created
correctly.

```
%> mvn dependency:resolve
%> mvn compile
%> mvn test
%> mvn package
```

## What was boiler plated:

1. The `Main.java` quickly jumps out of a static context, instantiating the `App` and
calling `start();`
1. There are a handful of tests that can be run to help verify the newly stamped out
boiler plate project.


## TODO

1. Add DB code
2. Add Logging (Logback, Log4j, something).
3. Update the template to Java 8
4. Include a .gitignore for Java in the Template.
