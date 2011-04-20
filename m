Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id A952B4C804CA;
	Wed, 20 Apr 2011 11:58:41 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Apr 2011 09:58:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,247,1301900400"; d="scan'208";a="736114541"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga001.jf.intel.com with ESMTP; 20 Apr 2011 09:58:41 -0700
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx604.amr.corp.intel.com ([10.250.113.17]) with mapi;
	Wed, 20 Apr 2011 09:58:40 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Darren Hart <dvhart@linux.intel.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
Date: Wed, 20 Apr 2011 09:58:37 -0700
Thread-Topic: [poky] Shared State - What does it mean and why should I care?
Thread-Index: Acv/emFUoFXhBn4yROS38tcJ2R5rzQAAcGZQ
Message-ID: <DE8BA75F34A0404282AC5E15F691BC76512BEFF6@orsmsx504.amr.corp.intel.com>
References: <1300408987.30423.2172.camel@rex>
	<4DAF0DB2.5080004@linux.intel.com>
In-Reply-To: <4DAF0DB2.5080004@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: yocto <yocto@yoctoproject.org>, poky <poky@yoctoproject.org>
Subject: Re: Shared State - What does it mean and why should I care?
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
X-List-Received-Date: Wed, 20 Apr 2011 16:58:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Sstate should get integrated into our documentation somewhere.

ScottR

-----Original Message-----
From: Darren Hart [mailto:dvhart@linux.intel.com]=20
Sent: Wednesday, April 20, 2011 9:46 AM
To: Richard Purdie
Cc: yocto; poky; Rifenbark, Scott M
Subject: Re: [poky] Shared State - What does it mean and why should I care?

Thanks for the write-up RP. Do we plan to integrate this with the
reference manual? Perhaps something on the wiki until this is all a bit
more final and then move it into the ref manual?

--
Darren

On 03/17/2011 05:43 PM, Richard Purdie wrote:
> One of the biggest attractions but also one of the biggest problems with
> the OpenEmbedded architecture has always been the grounding in the build
> from scratch approach. From one side this is a great advantage and its
> something many systems struggle with. The downside is that it also means
> people spend a lot of time rebuilding things from scratch and this is
> the default approach people take whenever they hit problems.
>=20
> For a long time we've wanted to find ways to do this better and have
> better incremental build support. It can be split into some related
> problems:
>=20
> a) How do we work out which pieces of the system have not changed and
> which have changed?
> b) How do we then remove and replace the pieces that have changed?
> c) How do we use prebuilt components that don't need to be built from
> scratch if they're available?
>=20
> We now have answers to the questions:
>=20
> a) We detect changes in the "inputs" to a given task by creating a
> checksum/signature of those inputs. If the checksum/signature changes,
> the inputs changed and we need to rerun it.
> b) The shared state (sstate) code tracks which tasks added which output
> to the build process. This means the output from a given task can be
> removed/upgraded or otherwise manipulated.
> c) This question is also addressed partly by b) assuming we can fetch
> the sstate objects from remote locations and install them if they're
> deemed to be valid.
>=20
> I'm now proud to announce that we have all these pieces in place and
> working. Its not a simple problem and I'm not going to claim its all bug
> free but the architecture is there, we've tested it and fixed many of
> the problems. This is by far the most complete and robust answer to the
> above questions we've ever had, replacing ideas like the several
> versions of packaged-staging that predate this.
>=20
> Since its new, this subject is lacking in documentation and I'd
> therefore like to dive into some of the technical details so these have
> at least been covered somewhere. I'm going to tell this partly as a
> story of how we've arrived at the design we have today. Over time we can
> expand this and include the data in the manuals etc.
>=20
> Overall Architecture
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> Firstly, we've made a decision to make all this work on a per-task
> basis. In previous versions of packaged-staging we did this on a per
> recipe basis but this didn't work well. Why? Imagine you have the ipk
> packaging backend enabled and you switch to deb. Your do_install and
> do_package output is still valid but a per recipe approach wouldn't
> include the .deb files so you'd have to invalidate the whole thing and
> re-run it. This is suboptimal. You also end up having to teach the core
> an awful lot of knowledge about specific tasks. This doesn't scale well
> and doesn't allow users to add new tasks easily in layers or external
> recipes without touching the packaged-staging core.
>=20
> Checksums/Signatures
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> So we need to detect all the inputs to a given task. For shell tasks
> this turns out to be fairly easily as we generate the "run" shell script
> for each task and its possible to checksum that and have a good idea of
> when the data going into a task changes.
>=20
> To complicate the problem, there are things we don't want to include in
> the checksum. Firstly, there is the actual specific build path of a
> given task (its WORKDIR). We don't really mind if that changes as that
> shouldn't affect the output for target packages and we also have the
> objective of making native/cross packages relocatable. We therefore need
> to exclude WORKDIR. The simplistic approach is therefore to set WORKDIR
> to some fixed value and checksum that "run" script. The next problem is
> the "run" scripts were rather full of functions that may or may not get
> called. Chris Larson added code which allowed us to figure out
> dependencies between shell functions and we use this to prune the "run"
> scripts down to the minimum set, thereby alleviating this problem and
> making the "run" scripts much more readable as an added bonus.
>=20
> So we have something that would work for shell, what about python tasks?
> These are harder but the same approach applies, we needed to figure out
> what variables a python function accesses and what functions it calls.
> Again, Chris Larson came up with some code for this and this is exactly
> what we do, figure out the variable and function dependencies, then
> checksum the data that goes as an input to the task.
>=20
> Like the WORKDIR case, there are some cases where we do explicitly want
> to ignore a dependency as we know better than bitbake. This can be done
> with a line like:
>=20
> PACKAGE_ARCHS[vardepsexclude] =3D "MACHINE"
>=20
> which would ensure that the PACKAGE_ARCHS variable does not depend on
> the value of MACHINE, even if it does reference it.
>=20
> Equally, there are some cases where we need to add in dependencies
> bitbake isn't able to find which can be done as:
>=20
> PACKAGE_ARCHS[vardeps] =3D "MACHINE"
>=20
> which would explicitly add the MACHINE variable as a dependency for
> PACKAGE_ARCHS. There are some cases with inline python for example where
> bitbake isn't able to figure out the dependencies. When running in debug
> mode (-DDD), bitbake does output information when it sees something it
> can't figure out the dependencies within. We currently have not managed
> to cover those dependencies in detail and this is something we know we
> need to fix.
>=20
> This covers the direct inputs into a task well but there is then the
> question of the indirect inputs, the things that were already built and
> present in the build directory. The information so far is referred to as
> the "basehash" in the code, we then need to add the hashes of all the
> tasks this task depends upon. Choosing which dependencies to add is a
> policy decision but the effect is to generate a master
> checksum/signature which combines the basehash and the hashes of the
> dependencies.
>=20
> Figuring out the dependencies and these signatures/checksums is great,
> what do we then do with the checksum information? We've introduced the
> notion of a signature handler into bitbake which is responsibility for
> processing this information. By default there is a dummy "noop"
> signature handler enabled in bitbake so behaviour is unchanged from
> previous versions. OECore uses the "basic" signature hander by setting:
>=20
> BB_SIGNATURE_HANDLER ?=3D "basic"
>=20
> in bitbake.conf. At the same point we also give bitbake some extra
> information to help it handle this information:
>=20
> BB_HASHBASE_WHITELIST ?=3D "TMPDIR FILE PATH PWD BB_TASKHASH BBPATH DL_DI=
R SSTATE_DIR THISDIR FILESEXTRAPATHS FILE_DIRNAME HOME LOGNAME SHELL TERM U=
SER FILESPATH USERNAME STAGING_DIR_HOST STAGING_DIR_TARGET"
> BB_HASHTASK_WHITELIST ?=3D "(.*-cross$|.*-native$|.*-cross-initial$|.*-cr=
oss-intermediate$|^virtual:native:.*|^virtual:nativesdk:.*)"
>=20
> The BB_HASHBASE_WHITELIST is effectively a list of global
> vardepsexclude, those variables are never included in any checksum. This
> is actually where we exclude WORKDIR since WORKDIR is constructed as a
> path within TMPDIR and we whitelist TMPDIR.
>=20
> The BB_HASHTASK_WHITELIST covers dependent tasks and excludes certain
> kinds of tasks from the dependency chains. The effect of the example
> above is to isolate the native, target and cross components, so for
> example, toolchain changes don't force a rebuild of the whole system.
>=20
> The end result of the "basic" handler is to make some dependency and
> hash information available to the build. This includes:
>=20
> BB_BASEHASH_task-<taskname> - the base hashes for each task in the recipe
> BB_BASEHASH_<filename:taskname> - the base hashes for each dependent task
> BBHASHDEPS_<filename:taskname> - The task dependencies for each task
> BB_TASKHASH - the hash of the currently running task
>=20
> There is also a "basichash" BB_SIGNATURE_HANDLER which is the same as
> the basic version but adds the task hash to the stamp files. This has
> the result that any metadata change that changes the task hash,
> automatically causes the task to rerun. This removes the need to bump PR
> values and changes to metadata automatically ripple across the build.
> This isn't the default but its likely we'll do that in future and all
> the functionality exists. The reason for delaying is the potential
> impact to distribution feed creation as they need increasing PR fields
> and we lack a mechanism to automate that yet. Its not a hard problem to
> fix though.
>=20
> Shared State
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> I've talked a lot about part a) of the problem above and how we detect
> changes to the tasks. This solves half the problem, the other half is
> using this information at the build level and being able to reuse or
> rebuild specific components.
>=20
> The sstate class is a relatively generic implementation of how to
> "capture" a snapshot of a given task. The idea is that from the build
> point of view we should never need to care where this output came from,
> it could be freshly built, it could be downloaded and unpacked from
> somewhere, we should never need to care.
>=20
> There are two classes of output, one is just about creating a directory
> in WORKDIR, e.g. the output of do_install or do_package. The other is
> where a set of data is merged into a shared directory tree such as the
> sysroot.
>=20
> We've tried to keep the gory details of the implementation hidden in the
> sstate class. From a user perspective, adding sstate wrapping to a task
> is as simple as this do_deploy example taken from do_deploy.bbclass:
>=20
> DEPLOYDIR =3D "${WORKDIR}/deploy-${PN}"
> SSTATETASKS +=3D "do_deploy"
> do_deploy[sstate-name] =3D "deploy"
> do_deploy[sstate-inputdirs] =3D "${DEPLOYDIR}"
> do_deploy[sstate-outputdirs] =3D "${DEPLOY_DIR_IMAGE}"
>=20
> python do_deploy_setscene () {
>     sstate_setscene(d)
> }
> addtask do_deploy_setscene
>=20
> Here, we add some extra flags to the task, a name field ("deploy"), an
> input directory which is where the task outputs data to, the output
> directory which is where the data from the task should be eventually be
> copied to. We also add a _setscene variant of the task and add the task
> name to the SSTATETASKS list.
>=20
> If there was a directory you just need to ensure has its contents
> preserved, this can be done with a line like:
>=20
> do_package[sstate-plaindirs] =3D "${PKGD} ${PKGDEST}"
>=20
> Its also worth highlighting mutliple directories can be handled as above
> or as in the following input/output example:
>=20
> do_package[sstate-inputdirs] =3D "${PKGDESTWORK} ${SHLIBSWORKDIR}"
> do_package[sstate-outputdirs] =3D "${PKGDATA_DIR} ${SHLIBSDIR}"
> do_package[sstate-lockfile] =3D "${PACKAGELOCK}"
>=20
> This also includes the ability to take a lockfile when manipulating
> sstate directory structures since some cases are sensitive to file
> additions/removals.
>=20
> Behind the scenes, the sstate code works by looking in SSTATE_DIR and
> also at any SSTATE_MIRRORS for sstate files. An example of a local file
> url sstate mirror is:
>=20
> SSTATE_MIRRORS ?=3D "\
> file://.* http://someserver.tld/share/sstate/ \n \
> file://.* file:///some/local/dir/sstate/"
>=20
> although any standard PREMIRROR/MIRROR syntax can be used for example
> with http:// urls.
>=20
> The sstate package validity can be detected just by looking at the
> filename since the filename contains the task checksum/signature as
> detailed above. If a valid sstate package is found, it will be
> downloaded and used to accelerate the task.
>=20
> The task acceleration phase is what the *_setscene tasks are used for.
> Bitbake goes through this phase before the main execution code and tries
> to accelerate any tasks it can find sstate packages for. If a sstate
> package for a task is available, the sstate package will be used, that
> task will not be run and importantly, any dependencies that task will
> also not be executed.
>=20
> As a real world example, the aim is when building an ipk based image,
> only the do_package_write_ipk tasks would have their sstate packages
> fetched and extracted. Since the sysroot isn't used, it would never get
> extracted. This is another reason to prefer the task based approach
> sstate takes over any recipe based approach which would have to install
> the output from every task.
>=20
> Tips and Tricks
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> This isn't simple code and when it goes wrong, debugging needs to be
> straightforward. During development we tried to write strong debugging
> tools too.
>=20
> Firstly, whenever a sstate package is written out, so is a
> corresponding .siginfo file. This is a pickled python database of all
> the metadata that went into creating the hash for a given sstate
> package.
>=20
> If bitbake is run with the --dump-signatures (or -S) option, instead of
> building the target package specified it will dump out siginfo files in
> the stamp directory for every task it would have executed.
>=20
> Finally, there is a bitbake-diffsigs command which can process these
> siginfo files. If one file is specified, it will dump out the dependency
> information in the file. If two files are specified, it will compare the
> two files and dump out the differences between the two.
>=20
> This allows the question of "What changed between X and Y?" to be
> answered easily.
>=20
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

--=20
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

