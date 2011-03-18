Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 150F94C80878;
	Thu, 17 Mar 2011 19:43:29 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2I0hTF3030161;
	Fri, 18 Mar 2011 00:43:29 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 30033-02; Fri, 18 Mar 2011 00:43:25 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2I0hLWM030155
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 18 Mar 2011 00:43:22 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto <yocto@yoctoproject.org>
Date: Fri, 18 Mar 2011 00:43:07 +0000
Message-ID: <1300408987.30423.2172.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky <poky@yoctoproject.org>
Subject: Shared State - What does it mean and why should I care?
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
X-List-Received-Date: Fri, 18 Mar 2011 00:43:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

One of the biggest attractions but also one of the biggest problems with
the OpenEmbedded architecture has always been the grounding in the build
from scratch approach. From one side this is a great advantage and its
something many systems struggle with. The downside is that it also means
people spend a lot of time rebuilding things from scratch and this is
the default approach people take whenever they hit problems.

For a long time we've wanted to find ways to do this better and have
better incremental build support. It can be split into some related
problems:

a) How do we work out which pieces of the system have not changed and
which have changed?
b) How do we then remove and replace the pieces that have changed?
c) How do we use prebuilt components that don't need to be built from
scratch if they're available?

We now have answers to the questions:

a) We detect changes in the "inputs" to a given task by creating a
checksum/signature of those inputs. If the checksum/signature changes,
the inputs changed and we need to rerun it.
b) The shared state (sstate) code tracks which tasks added which output
to the build process. This means the output from a given task can be
removed/upgraded or otherwise manipulated.
c) This question is also addressed partly by b) assuming we can fetch
the sstate objects from remote locations and install them if they're
deemed to be valid.

I'm now proud to announce that we have all these pieces in place and
working. Its not a simple problem and I'm not going to claim its all bug
free but the architecture is there, we've tested it and fixed many of
the problems. This is by far the most complete and robust answer to the
above questions we've ever had, replacing ideas like the several
versions of packaged-staging that predate this.

Since its new, this subject is lacking in documentation and I'd
therefore like to dive into some of the technical details so these have
at least been covered somewhere. I'm going to tell this partly as a
story of how we've arrived at the design we have today. Over time we can
expand this and include the data in the manuals etc.

Overall Architecture
====================

Firstly, we've made a decision to make all this work on a per-task
basis. In previous versions of packaged-staging we did this on a per
recipe basis but this didn't work well. Why? Imagine you have the ipk
packaging backend enabled and you switch to deb. Your do_install and
do_package output is still valid but a per recipe approach wouldn't
include the .deb files so you'd have to invalidate the whole thing and
re-run it. This is suboptimal. You also end up having to teach the core
an awful lot of knowledge about specific tasks. This doesn't scale well
and doesn't allow users to add new tasks easily in layers or external
recipes without touching the packaged-staging core.

Checksums/Signatures
====================

So we need to detect all the inputs to a given task. For shell tasks
this turns out to be fairly easily as we generate the "run" shell script
for each task and its possible to checksum that and have a good idea of
when the data going into a task changes.

To complicate the problem, there are things we don't want to include in
the checksum. Firstly, there is the actual specific build path of a
given task (its WORKDIR). We don't really mind if that changes as that
shouldn't affect the output for target packages and we also have the
objective of making native/cross packages relocatable. We therefore need
to exclude WORKDIR. The simplistic approach is therefore to set WORKDIR
to some fixed value and checksum that "run" script. The next problem is
the "run" scripts were rather full of functions that may or may not get
called. Chris Larson added code which allowed us to figure out
dependencies between shell functions and we use this to prune the "run"
scripts down to the minimum set, thereby alleviating this problem and
making the "run" scripts much more readable as an added bonus.

So we have something that would work for shell, what about python tasks?
These are harder but the same approach applies, we needed to figure out
what variables a python function accesses and what functions it calls.
Again, Chris Larson came up with some code for this and this is exactly
what we do, figure out the variable and function dependencies, then
checksum the data that goes as an input to the task.

Like the WORKDIR case, there are some cases where we do explicitly want
to ignore a dependency as we know better than bitbake. This can be done
with a line like:

PACKAGE_ARCHS[vardepsexclude] = "MACHINE"

which would ensure that the PACKAGE_ARCHS variable does not depend on
the value of MACHINE, even if it does reference it.

Equally, there are some cases where we need to add in dependencies
bitbake isn't able to find which can be done as:

PACKAGE_ARCHS[vardeps] = "MACHINE"

which would explicitly add the MACHINE variable as a dependency for
PACKAGE_ARCHS. There are some cases with inline python for example where
bitbake isn't able to figure out the dependencies. When running in debug
mode (-DDD), bitbake does output information when it sees something it
can't figure out the dependencies within. We currently have not managed
to cover those dependencies in detail and this is something we know we
need to fix.

This covers the direct inputs into a task well but there is then the
question of the indirect inputs, the things that were already built and
present in the build directory. The information so far is referred to as
the "basehash" in the code, we then need to add the hashes of all the
tasks this task depends upon. Choosing which dependencies to add is a
policy decision but the effect is to generate a master
checksum/signature which combines the basehash and the hashes of the
dependencies.

Figuring out the dependencies and these signatures/checksums is great,
what do we then do with the checksum information? We've introduced the
notion of a signature handler into bitbake which is responsibility for
processing this information. By default there is a dummy "noop"
signature handler enabled in bitbake so behaviour is unchanged from
previous versions. OECore uses the "basic" signature hander by setting:

BB_SIGNATURE_HANDLER ?= "basic"

in bitbake.conf. At the same point we also give bitbake some extra
information to help it handle this information:

BB_HASHBASE_WHITELIST ?= "TMPDIR FILE PATH PWD BB_TASKHASH BBPATH DL_DIR SSTATE_DIR THISDIR FILESEXTRAPATHS FILE_DIRNAME HOME LOGNAME SHELL TERM USER FILESPATH USERNAME STAGING_DIR_HOST STAGING_DIR_TARGET"
BB_HASHTASK_WHITELIST ?= "(.*-cross$|.*-native$|.*-cross-initial$|.*-cross-intermediate$|^virtual:native:.*|^virtual:nativesdk:.*)"

The BB_HASHBASE_WHITELIST is effectively a list of global
vardepsexclude, those variables are never included in any checksum. This
is actually where we exclude WORKDIR since WORKDIR is constructed as a
path within TMPDIR and we whitelist TMPDIR.

The BB_HASHTASK_WHITELIST covers dependent tasks and excludes certain
kinds of tasks from the dependency chains. The effect of the example
above is to isolate the native, target and cross components, so for
example, toolchain changes don't force a rebuild of the whole system.

The end result of the "basic" handler is to make some dependency and
hash information available to the build. This includes:

BB_BASEHASH_task-<taskname> - the base hashes for each task in the recipe
BB_BASEHASH_<filename:taskname> - the base hashes for each dependent task
BBHASHDEPS_<filename:taskname> - The task dependencies for each task
BB_TASKHASH - the hash of the currently running task

There is also a "basichash" BB_SIGNATURE_HANDLER which is the same as
the basic version but adds the task hash to the stamp files. This has
the result that any metadata change that changes the task hash,
automatically causes the task to rerun. This removes the need to bump PR
values and changes to metadata automatically ripple across the build.
This isn't the default but its likely we'll do that in future and all
the functionality exists. The reason for delaying is the potential
impact to distribution feed creation as they need increasing PR fields
and we lack a mechanism to automate that yet. Its not a hard problem to
fix though.

Shared State
============

I've talked a lot about part a) of the problem above and how we detect
changes to the tasks. This solves half the problem, the other half is
using this information at the build level and being able to reuse or
rebuild specific components.

The sstate class is a relatively generic implementation of how to
"capture" a snapshot of a given task. The idea is that from the build
point of view we should never need to care where this output came from,
it could be freshly built, it could be downloaded and unpacked from
somewhere, we should never need to care.

There are two classes of output, one is just about creating a directory
in WORKDIR, e.g. the output of do_install or do_package. The other is
where a set of data is merged into a shared directory tree such as the
sysroot.

We've tried to keep the gory details of the implementation hidden in the
sstate class. From a user perspective, adding sstate wrapping to a task
is as simple as this do_deploy example taken from do_deploy.bbclass:

DEPLOYDIR = "${WORKDIR}/deploy-${PN}"
SSTATETASKS += "do_deploy"
do_deploy[sstate-name] = "deploy"
do_deploy[sstate-inputdirs] = "${DEPLOYDIR}"
do_deploy[sstate-outputdirs] = "${DEPLOY_DIR_IMAGE}"

python do_deploy_setscene () {
    sstate_setscene(d)
}
addtask do_deploy_setscene

Here, we add some extra flags to the task, a name field ("deploy"), an
input directory which is where the task outputs data to, the output
directory which is where the data from the task should be eventually be
copied to. We also add a _setscene variant of the task and add the task
name to the SSTATETASKS list.

If there was a directory you just need to ensure has its contents
preserved, this can be done with a line like:

do_package[sstate-plaindirs] = "${PKGD} ${PKGDEST}"

Its also worth highlighting mutliple directories can be handled as above
or as in the following input/output example:

do_package[sstate-inputdirs] = "${PKGDESTWORK} ${SHLIBSWORKDIR}"
do_package[sstate-outputdirs] = "${PKGDATA_DIR} ${SHLIBSDIR}"
do_package[sstate-lockfile] = "${PACKAGELOCK}"

This also includes the ability to take a lockfile when manipulating
sstate directory structures since some cases are sensitive to file
additions/removals.

Behind the scenes, the sstate code works by looking in SSTATE_DIR and
also at any SSTATE_MIRRORS for sstate files. An example of a local file
url sstate mirror is:

SSTATE_MIRRORS ?= "\
file://.* http://someserver.tld/share/sstate/ \n \
file://.* file:///some/local/dir/sstate/"

although any standard PREMIRROR/MIRROR syntax can be used for example
with http:// urls.

The sstate package validity can be detected just by looking at the
filename since the filename contains the task checksum/signature as
detailed above. If a valid sstate package is found, it will be
downloaded and used to accelerate the task.

The task acceleration phase is what the *_setscene tasks are used for.
Bitbake goes through this phase before the main execution code and tries
to accelerate any tasks it can find sstate packages for. If a sstate
package for a task is available, the sstate package will be used, that
task will not be run and importantly, any dependencies that task will
also not be executed.

As a real world example, the aim is when building an ipk based image,
only the do_package_write_ipk tasks would have their sstate packages
fetched and extracted. Since the sysroot isn't used, it would never get
extracted. This is another reason to prefer the task based approach
sstate takes over any recipe based approach which would have to install
the output from every task.

Tips and Tricks
===============

This isn't simple code and when it goes wrong, debugging needs to be
straightforward. During development we tried to write strong debugging
tools too.

Firstly, whenever a sstate package is written out, so is a
corresponding .siginfo file. This is a pickled python database of all
the metadata that went into creating the hash for a given sstate
package.

If bitbake is run with the --dump-signatures (or -S) option, instead of
building the target package specified it will dump out siginfo files in
the stamp directory for every task it would have executed.

Finally, there is a bitbake-diffsigs command which can process these
siginfo files. If one file is specified, it will dump out the dependency
information in the file. If two files are specified, it will compare the
two files and dump out the differences between the two.

This allows the question of "What changed between X and Y?" to be
answered easily.



