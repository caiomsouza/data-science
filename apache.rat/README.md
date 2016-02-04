#Apache Rat
Apache Rat is a release audit tool, focused on licenses.<BR>
http://creadur.apache.org/rat/<BR>

# How to install and Run Apache Rat

###SVN Checkout the code in a folder
```
cd /Users/caiomsouza/svn
svn co http://svn.apache.org/repos/asf/creadur/rat/trunk/
```

###Build Rat
```
cd /Users/caiomsouza/svn/apache.rat/trunk
mvn clean install
```

###Run Apache Rat
```
cd /Users/caiomsouza/svn/apache.rat/trunk/apache-rat/target
java -jar apache-rat-0.12-SNAPSHOT.jar
```

