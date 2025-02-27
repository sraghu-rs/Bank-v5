<?xml version="1.0" ?>

<TestCase name="Git_Commit_Push_Changes" version="5">

<meta>
   <create version="10.8.1" buildNumber="10.8.1.2174" author="admin" date="02/07/2025" host="C02CP01UPWDG" />
   <lastEdited version="10.8.1" buildNumber="10.8.1.2174" author="admin" date="02/11/2025" host="C02CP01UPWDG" />
</meta>

<id>F0B85170E54511EFB36EE252AE6C1D05</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC44LjEgKDEwLjguMS4yMTc0KSZub2Rlcz0tNzM4NjMzNDc3</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="ls" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          uid="68DEB29E54611EFB36EE252AE6C1D05" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="git status" > 

<cmd>ls&#10;&#10;</cmd>
<basedir>{{LISA_HOME}}/Projects/Bank v5</basedir>
<toNode>abort</toNode>
<exceptionNode>abort</exceptionNode>
<timeOut>300</timeOut>
<killAtEnd>false</killAtEnd>
<wait>true</wait>
<addToEnv>false</addToEnv>
<spawn>false</spawn>
<execShell>false</execShell>
<charset>DEFAULT</charset>
<env>
</env>
<exitCodes>
</exitCodes>
    </Node>


    <Node name="git status" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          uid="9F7EA2A9E5F111EFBCE6E252AE6C1D05" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="git add *" > 

<cmd>git status</cmd>
<basedir>{{LISA_HOME}}/Projects/Bank v5</basedir>
<toNode>abort</toNode>
<exceptionNode>abort</exceptionNode>
<timeOut>300</timeOut>
<killAtEnd>false</killAtEnd>
<wait>true</wait>
<addToEnv>false</addToEnv>
<spawn>false</spawn>
<execShell>false</execShell>
<charset>DEFAULT</charset>
<env>
</env>
<exitCodes>
</exitCodes>
    </Node>


    <Node name="git add *" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          uid="E3C370D8E5F111EFBCE6E252AE6C1D05" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="git commit" > 

<cmd>git add * </cmd>
<basedir>{{LISA_HOME}}/Projects/Bank v5</basedir>
<toNode>abort</toNode>
<exceptionNode>abort</exceptionNode>
<timeOut>300</timeOut>
<killAtEnd>false</killAtEnd>
<wait>true</wait>
<addToEnv>false</addToEnv>
<spawn>false</spawn>
<execShell>false</execShell>
<charset>DEFAULT</charset>
<env>
</env>
<exitCodes>
</exitCodes>
    </Node>


    <Node name="git commit" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          uid="EFC0E5B7E5F111EFBCE6E252AE6C1D05" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="git push origin" > 

<cmd>git commit -m &quot;{{GIT_COMMIT_MESSAGE}}&quot;</cmd>
<basedir>{{LISA_HOME}}/Projects/Bank v5</basedir>
<toNode>abort</toNode>
<exceptionNode>abort</exceptionNode>
<timeOut>300</timeOut>
<killAtEnd>false</killAtEnd>
<wait>true</wait>
<addToEnv>false</addToEnv>
<spawn>false</spawn>
<execShell>false</execShell>
<charset>DEFAULT</charset>
<env>
</env>
<exitCodes>
</exitCodes>
    </Node>


    <Node name="git push origin" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          uid="59BE96C6E5F711EFBCE6E252AE6C1D05" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

<cmd>git push origin&#9;</cmd>
<basedir>{{LISA_HOME}}/Projects/Bank v5</basedir>
<toNode>abort</toNode>
<exceptionNode>abort</exceptionNode>
<timeOut>300</timeOut>
<killAtEnd>false</killAtEnd>
<wait>true</wait>
<addToEnv>false</addToEnv>
<spawn>false</spawn>
<execShell>false</execShell>
<charset>DEFAULT</charset>
<env>
</env>
<exitCodes>
</exitCodes>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="F0B87882E54511EFB36EE252AE6C1D05" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="F0B87884E54511EFB36EE252AE6C1D05" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="F0B87886E54511EFB36EE252AE6C1D05" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
