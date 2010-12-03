Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7587F4C811D0
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 13:10:28 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 07 Dec 2010 11:10:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,311,1288594800"; d="scan'208";a="581463879"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.146])
	by orsmga002.jf.intel.com with ESMTP; 07 Dec 2010 11:10:27 -0800
Message-Id: <5b2195afa36d494876dda94ff2fabde84779d336.1291748065.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1291748065.git.scott.m.rifenbark@intel.com>
References: <cover.1291748065.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Fri, 3 Dec 2010 12:23:03 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 3/3] documentation/poky-ref-manual/ref-bitbake.xml: Completed general edits.
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 07 Dec 2010 19:10:28 -0000

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/ref-bitbake.xml |  269 +++++++++++++------------
 1 files changed, 135 insertions(+), 134 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-bitbake.xml b/documentation/poky-ref-manual/ref-bitbake.xml
index cf019aa..1a98b04 100644
--- a/documentation/poky-ref-manual/ref-bitbake.xml
+++ b/documentation/poky-ref-manual/ref-bitbake.xml
@@ -28,15 +28,15 @@
         <title>Parsing</title>
 
         <para>
-            The first thing BitBake does is work out its configuration by 
-            looking for a file called <filename>bitbake.conf</filename>.
-            BitBake examines the <varname>BBPATH</varname> environment 
-            variable looking for a <filename class="directory">conf/</filename> 
-            directory that contains a <filename>bitbake.conf</filename> file.
-            BitBake adds the first <filename>bitbake.conf</filename> file found in
-            <varname>BBPATH</varname> (similar to the PATH environment variable). 
-            For Poky, <filename>bitbake.conf</filename> is found in <filename 
-            class="directory">meta/conf/</filename>. 
+            BitBake parses configuration files, classes, and <filename>.bb</filename> files. 
+        </para>
+
+        <para>
+            The first thing BitBake does is look for the <filename>bitbake.conf</filename> file.
+            Poky keeps this file in <filename class="directory">meta/conf/</filename>.
+            BitBake finds it by examining the <varname>BBPATH</varname> environment 
+            variable and looking for the <filename class="directory">meta/conf/</filename> 
+            directory.
         </para>
 
         <para>
@@ -75,12 +75,12 @@
         </para>
 
         <para>
-            After the parsing of the configuration files is complete, the 
+            After classes are included, the 
             variable <glossterm><link linkend='var-BBFILES'>BBFILES</link></glossterm> 
             is set, usually in
             <filename>local.conf</filename>, and defines the list of places to search for 
             <filename class="extension">.bb</filename> files. 
-            By default this specifies the <filename class="directory">meta/packages/
+            By default, the BBFILES variable specifies the <filename class="directory">meta/packages/
             </filename> directory within Poky, but other directories such as
             <filename class="directory">meta-extras/</filename> can be included 
             too. 
@@ -92,19 +92,19 @@
             BitBake parses each <filename class="extension">.bb</filename> file in BBFILES and 
             stores the values of various variables.  
             In summary, for each <filename class="extension">.bb</filename> 
-            file the configuration + base class of variables are set, followed 
+            file the configuration plus the base class of variables are set, followed 
             by the data in the <filename class="extension">.bb</filename> file 
             itself, followed by any inherit commands that
             <filename class="extension">.bb</filename> file might contain.
         </para>
 
         <para>
-            Parsing <filename class="extension">.bb</filename> files is a time 
-            consuming process, so a cache is kept to speed up subsequent parsing. 
+            Because parsing <filename class="extension">.bb</filename> files is a time 
+            consuming process, a cache is kept to speed up subsequent parsing. 
             This cache is invalid if the timestamp of the <filename class="extension">.bb</filename> 
-            file itself has changed, or if the timestamps of any of the include, 
+            file itself changes, or if the timestamps of any of the include, 
             configuration or class files the <filename class="extension">.bb</filename>
-            file depends on have changed.
+            file depends on changes.
         </para>
     </section>
 
@@ -113,58 +113,53 @@
 
         <para>
             Once all the <filename class="extension">.bb</filename> files have been 
-            parsed, BitBake will proceed to build "poky-image-sato" (or whatever was
-            specified on the commandline) and looks for providers of that target.
+            parsed, BitBake starts to build the target (poky-image-sato in the previous section's 
+            example) and looks for providers of that target.
             Once a provider is selected, BitBake resolves all the dependencies for  
-            the target. In the case of "poky-image-sato", it would lead to 
-            <filename>task-base.bb</filename>  
-            which in turn would lead to packages like <application>Contacts</application>, 
-            <application>Dates</application>, <application>BusyBox</application>
-            and these in turn depend on glibc and the toolchain.
+            the target. 
+            In the case of "poky-image-sato", it would lead to <filename>task-base.bb</filename>,  
+            which in turn leads to packages like <application>Contacts</application>, 
+            <application>Dates</application> and <application>BusyBox</application>.
+            These packages in turn depend on glibc and the toolchain.
         </para>
 
         <para>
-            Sometimes a target might have multiple providers and a common example 
-            is "virtual/kernel" that is provided by each kernel package. Each machine
-            will often elect the best provider of its kernel with a line like the 
+            Sometimes a target might have multiple providers.
+            An common example is "virtual/kernel", which is provided by each kernel package. 
+            Each machine often elects the best kernel provider by using a line similar to the 
             following in the machine configuration file:
         </para>
-        <programlisting><glossterm><link linkend='var-PREFERRED_PROVIDER'>PREFERRED_PROVIDER</link></glossterm>_virtual/kernel = "linux-rp"</programlisting>
+
+        <programlisting>
+PREFERRED_PROVIDER_virtual/kernel = "linux-rp"
+        </programlisting>
+
         <para>
-            The default <glossterm><link linkend='var-PREFERRED_PROVIDER'>
-            PREFERRED_PROVIDER</link></glossterm> is the provider with the same name as
-            the target.
+            The default <glossterm><link linkend='var-PREFERRED_PROVIDER'>PREFERRED_PROVIDER</link></glossterm> 
+            is the provider with the same name as the target.
         </para>
 
         <para>
-            Understanding how providers are chosen is complicated by the fact
-            multiple versions might be present. BitBake defaults to the highest 
-            version of a provider by default. Version comparisons are made using 
-            the same method as Debian. The <glossterm><link 
-            linkend='var-PREFERRED_VERSION'>PREFERRED_VERSION</link></glossterm>
-            variable can be used to specify a particular version 
-            (usually in the distro configuration) but the order can 
-            also be influenced by the <glossterm><link
-                    linkend='var-DEFAULT_PREFERENCE'>DEFAULT_PREFERENCE</link></glossterm> 
-            variable. By default files 
-            have a preference of "0". Setting the
-            <glossterm><link
-                    linkend='var-DEFAULT_PREFERENCE'>DEFAULT_PREFERENCE</link></glossterm> to "-1" will 
-            make a package unlikely to be used unless it was explicitly referenced and
-            "1" makes it likely the package will be used. 
-            <glossterm><link
-                    linkend='var-PREFERRED_VERSION'>PREFERRED_VERSION</link></glossterm> overrides 
-            any <glossterm><link
-                    linkend='var-DEFAULT_PREFERENCE'>DEFAULT_PREFERENCE</link></glossterm>. <glossterm><link
-                    linkend='var-DEFAULT_PREFERENCE'>DEFAULT_PREFERENCE</link></glossterm> 
-            is often used to mark more 
-            experimental new versions of packages until they've undergone sufficient 
-            testing to be considered stable.
+            Understanding how providers are chosen is made complicated by the fact
+            that multiple versions might exist. 
+            BitBake defaults to the highest version of a provider.
+            Version comparisons are made using the same method as Debian. 
+            You can use the <glossterm><link linkend='var-PREFERRED_VERSION'>PREFERRED_VERSION</link></glossterm>
+            variable to specify a particular version (usually in the distro configuration).
+            You can influence the order by using the 
+            <glossterm><link linkend='var-DEFAULT_PREFERENCE'>DEFAULT_PREFERENCE</link></glossterm> 
+            variable. 
+            By default, files have a preference of "0". 
+            Setting the DEFAULT_PREFERENCE to "-1" makes the package unlikely to be used unless it is
+            explicitly referenced.
+            Setting the DEFAULT_PREFERENCE to "1" makes it likely the package is used. 
+            PREFERRED_VERSION overrides any DEFAULT_PREFERENCE setting.
+            DEFAULT_PREFERENCE is often used to mark newer and more experimental package
+            versions until they have undergone sufficient testing to be considered stable.
         </para>
 
         <para>
-            The end result is that internally, BitBake has now built a list of 
-            providers for each target it needs in order of priority.
+            In summary, BitBake has created a list of providers, which is prioritized, for each target.
         </para>
     </section>
 
@@ -172,18 +167,20 @@
         <title>Dependencies</title>
 
         <para>
-            Each target BitBake builds consists of multiple tasks (e.g. fetch, 
-            unpack, patch, configure, compile etc.). For best performance on 
-            multi-core systems, BitBake considers each task as an independent 
-            entity with a set of dependencies. There are many variables that 
-            are used to signify these dependencies and more information can be found 
-            about these in the <ulink url='http://bitbake.berlios.de/manual/'>
-            BitBake manual</ulink>. At a basic level it is sufficient to know 
-        that BitBake uses the <glossterm><link
-                linkend='var-DEPENDS'>DEPENDS</link></glossterm> and 
-        <glossterm><link linkend='var-RDEPENDS'>RDEPENDS</link></glossterm> variables when 
-            calculating dependencies and descriptions of these variables are 
-            available through the links. 
+            Each target BitBake builds consists of multiple tasks such as fetch, unpack, patch, configure, 
+            and compile. 
+            For best performance on multi-core systems, BitBake considers each task as an independent 
+            entity with its own set of dependencies. 
+        </para>
+  
+        <para>
+            Dependencies are defined through several variables.
+            You can find information about variables BitBake uses in the 
+            <ulink url='http://bitbake.berlios.de/manual/'>BitBake manual</ulink>. 
+            At a basic level it is sufficient to know that BitBake uses the 
+            <glossterm><link linkend='var-DEPENDS'>DEPENDS</link></glossterm> and 
+            <glossterm><link linkend='var-RDEPENDS'>RDEPENDS</link></glossterm> variables when 
+            calculating dependencies. 
         </para>
 
     </section>
@@ -193,69 +190,75 @@
 
         <para>
             Based on the generated list of providers and the dependency information, 
-            BitBake can now calculate exactly which tasks it needs to run and in what 
-            order. The build now starts with BitBake forking off threads up to
-            the limit set in the <glossterm><link
-                    linkend='var-BB_NUMBER_THREADS'>BB_NUMBER_THREADS</link></glossterm> variable
-            as long as there are tasks ready to run, i.e. tasks with all their
-            dependencies met.
+            BitBake can now calculate exactly what tasks it needs to run and in what 
+            order it needs to run them. 
+            The build now starts with BitBake forking off threads up to the limit set in the 
+            <glossterm><link linkend='var-BB_NUMBER_THREADS'>BB_NUMBER_THREADS</link></glossterm> variable.
+            BitBake continues to fork threads as long as there are tasks ready to run,
+            those taksks have all their dependencies met, and the thread threshold has not been 
+            exceeded.
         </para>
 
         <para>
-            As each task completes, a timestamp is written to the directory 
-            specified by the <glossterm><link
-                    linkend='var-STAMPS'>STAMPS</link></glossterm> variable (usually 
-            <filename class="directory">build/tmp/stamps/*/</filename>). On 
-            subsequent runs, BitBake looks at the <glossterm><link
-                    linkend='var-STAMPS'>STAMPS</link></glossterm>
-            directory and will not rerun 
-            tasks its already completed unless a timestamp is found to be invalid. 
-            Currently, invalid timestamps are only considered on a per <filename 
-            class="extension">.bb</filename> file basis so if for example the configure stamp has a timestamp greater than the 
-            compile timestamp for a given target the compile task would rerun but this 
-            has no effect on other providers depending on that target. This could 
-            change or become configurable in future versions of BitBake. Some tasks 
-            are marked as "nostamp" tasks which means no timestamp file will be written 
-            and the task will always rerun.
+            As each task completes, a timestamp is written to the directory specified by the 
+            <glossterm><link linkend='var-STAMPS'>STAMPS</link></glossterm> variable (usually 
+            <filename class="directory">build/tmp/stamps/*/</filename>). 
+            On subsequent runs, BitBake looks at the STAMPS directory and does not rerun 
+            tasks that are already completed unless a timestamp is found to be invalid. 
+            Currently, invalid timestamps are only considered on a per 
+            <filename class="extension">.bb</filename> file basis.
+            So, for example, if the configure stamp has a timestamp greater than the 
+            compile timestamp for a given target then the compile task would rerun.
+            Running the compile task again, however, has no effect on other providers 
+            that depend on that target. 
+            This behavior could change or become configurable in future versions of BitBake. 
         </para>
-
-        <para>Once all the tasks have been completed BitBake exits.</para> 
-
+ 
+        <note><para>
+            Some tasks are marked as "nostamp" tasks.
+            No timestamp file is created when these tasks are run.
+            Consequently, "nostamp" tasks are always rerun.
+        </para></note>
     </section>
 
     <section id='ref-bitbake-runtask'>
         <title>Running a Task</title>
 
         <para>
-            It's worth noting what BitBake does to run a task. A task can either
-            be a shell task or a python task. For shell tasks, BitBake writes a
-            shell script to <filename>${WORKDIR}/temp/run.do_taskname.pid</filename>
-            and then executes the script. The generated
-            shell script contains all the exported variables, and the shell functions 
-            with all variables expanded. Output from the shell script is 
-            sent to the file <filename>${WORKDIR}/temp/log.do_taskname.pid</filename>.
-            Looking at the
-            expanded shell functions in the run file and the output in the log files 
+            Tasks can either be a shell task or a python task.
+            For shell tasks, BitBake writes a shell script to 
+            <filename>${WORKDIR}/temp/run.do_taskname.pid</filename> and then executes the script. 
+            The generated shell script contains all the exported variables, and the shell functions 
+            with all variables expanded. 
+            Output from the shell script goes to the file <filename>${WORKDIR}/temp/log.do_taskname.pid</filename>.
+            Looking at the expanded shell functions in the run file and the output in the log files 
             is a useful debugging technique.
         </para>
 
         <para>
-            Python functions are executed internally to BitBake itself and 
-            logging goes to the controlling terminal. Future versions of BitBake will 
-            write the functions to files in a similar way to shell functions and 
-            logging will also go to the log files in a similar way.
+            For Python tasks, BitBake executes the task internally and logs information to the 
+            controlling terminal. 
+            Future versions of BitBake will write the functions to files similar to the way 
+            shell tasks are handled.
+            Logging will be handled in way similar to shell tasks as well.
         </para>
+
+        <para>
+            Once all the tasks have been completed BitBake exits.
+        </para> 
     </section>
 
 
     <section id='ref-bitbake-commandline'>
-        <title>Commandline</title>
+        <title>BitBake Command Line</title>
 
         <para>
-            To quote from "bitbake --help":
+            Following is the bitbake manpage:
         </para>
 
-        <screen>Usage: bitbake [options] [package ...]
+        <screen>
+$ bitbake --help
+Usage: bitbake [options] [package ...]
 
 Executes the specified task (default is 'build') for a given set of BitBake files.
 It expects that BBFILES is defined, which is a space separated list of files to
@@ -275,6 +278,8 @@ Options:
   -a, --tryaltconfigs   continue with builds by trying to use alternative
                         providers where possible.
   -f, --force           force run of specified cmd, regardless of stamp status
+  -i, --interactive     drop into the interactive mode also called the BitBake
+                        shell.
   -c CMD, --cmd=CMD     Specify task to execute. Note that this only executes
                         the specified task for the providee and the packages
                         it depends on, i.e. 'compile' does not implicitly call
@@ -287,9 +292,6 @@ Options:
   -D, --debug           Increase the debug level. You can specify this more
                         than once.
   -n, --dry-run         don't execute, just go through the motions
-  -S, --dump-signatures
-                        don't execute, just dump out the signature
-                        construction information
   -p, --parse-only      quit after parsing the BB files (developers only)
   -d, --disable-psyco   disable using the psyco just-in-time compiler (not
                         recommended)
@@ -298,46 +300,45 @@ Options:
                         what used to be bbread)
   -g, --graphviz        emit the dependency trees of the specified packages in
                         the dot syntax
-  -I EXTRA_ASSUME_PROVIDED, --ignore-deps=EXTRA_ASSUME_PROVIDED
-                        Assume these dependencies don't exist and are already
-                        provided (equivalent to ASSUME_PROVIDED). Useful to
-                        make dependency graphs more appealing
+  -I IGNORED_DOT_DEPS, --ignore-deps=IGNORED_DOT_DEPS
+                        Stop processing at the given list of dependencies when
+                        generating dependency graphs. This can help to make
+                        the graph more appealing
   -l DEBUG_DOMAINS, --log-domains=DEBUG_DOMAINS
                         Show debug logging for the specified logging domains
   -P, --profile         profile the command and print a report
-  -u UI, --ui=UI        userinterface to use
-  --revisions-changed   Set the exit code depending on whether upstream
-                        floating revisions have changed or not</screen>
-
+        </screen>
     </section>
 
     <section id='ref-bitbake-fetchers'>
         <title>Fetchers</title>
 
         <para>
-            As well as the containing the parsing and task/dependency handling 
-            code, BitBake also contains a set of "fetcher" modules which allow 
-            fetching of source code from various types of sources. Example 
-            sources might be from disk with the metadata, from websites, from 
-            remote shell accounts or from SCM systems like cvs/subversion/git. 
+            BitBake also contains a set of "fetcher" modules that allow 
+            retrieval of source code from various types of sources. 
+            For example, BitBake can get source code from a disk with the metadata, from websites, 
+            from remote shell accounts or from Source Code Management (SCM) systems 
+            like <filename>cvs/subversion/git</filename>. 
         </para>
 
         <para>
-            The fetchers are usually triggered by entries in 
-            <glossterm><link linkend='var-SRC_URI'>SRC_URI</link></glossterm>. Information about the 
-            options and formats of entries for specific fetchers can be found in the 
-            <ulink url='http://bitbake.berlios.de/manual/'>BitBake manual</ulink>.
+            Fetchers are usually triggered by entries in 
+            <glossterm><link linkend='var-SRC_URI'>SRC_URI</link></glossterm>. 
+            You can find information about the options and formats of entries for specific 
+            fetchers in the <ulink url='http://bitbake.berlios.de/manual/'>BitBake manual</ulink>.
         </para>
 
         <para>
             One useful feature for certain SCM fetchers is the ability to 
-            "auto-update" when the upstream SCM changes version. Since this 
-            requires certain functionality from the SCM only certain systems 
-            support it, currently Subversion, Bazaar and to a limited extent, Git. It 
-            works using the <glossterm><link linkend='var-SRCREV'>SRCREV</link>
-            </glossterm> variable. See the <link linkend='platdev-appdev-srcrev'>
-            developing with an external SCM based project</link> section for more
-            information.
+            "auto-update" when the upstream SCM changes version. 
+            Since this ability requires certain functionality from the SCM, not all
+            systems support it.
+            Currently Subversion, Bazaar and to a limited extent, Git support the ability to "auto-update". 
+            This feature works using the <glossterm><link linkend='var-SRCREV'>SRCREV</link></glossterm> 
+            variable. 
+            See the 
+            <link linkend='platdev-appdev-srcrev'>Developing within Poky with an External SCM-based Package</link> 
+            section for more information.
         </para>
 
     </section>
-- 
1.7.0.4


