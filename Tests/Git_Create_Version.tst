<?xml version="1.0" ?>

<TestCase name="Git_Create_Version" version="5">

<meta>
   <create version="10.8.1" buildNumber="10.8.1.2174" author="admin" date="02/08/2025" host="C02CP01UPWDG" />
   <lastEdited version="10.8.1" buildNumber="10.8.1.2174" author="admin" date="02/11/2025" host="C02CP01UPWDG" />
</meta>

<id>E72E1D12E5F211EFBCE6E252AE6C1D05</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC44LjEgKDEwLjguMS4yMTc0KSZub2Rlcz0xNDE4MTQ5OTg2</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="git tag" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          uid="1825F93AE5F311EFBCE6E252AE6C1D05" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="git push tag" > 

<cmd>git tag &quot;{{GIT_TAG}}&quot;</cmd>
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


    <Node name="git push tag" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          uid="301E9A7EE5F311EFBCE6E252AE6C1D05" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

<cmd>git push origin {{GIT_TAG}}:{{GIT_TAG}}</cmd>
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
          uid="E72E1D14E5F211EFBCE6E252AE6C1D05" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="E72E1D16E5F211EFBCE6E252AE6C1D05" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="E72E1D18E5F211EFBCE6E252AE6C1D05" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
