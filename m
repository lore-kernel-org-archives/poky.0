Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9847E006AD
	for <poky@yoctoproject.org>; Mon,  2 Jul 2012 15:50:08 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 02 Jul 2012 15:50:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="118258620"
Received: from fmsmsx107.amr.corp.intel.com ([10.19.9.54])
	by AZSMGA002.ch.intel.com with ESMTP; 02 Jul 2012 15:50:08 -0700
Received: from shsmsx101.ccr.corp.intel.com (10.239.4.153) by
	FMSMSX107.amr.corp.intel.com (10.19.9.54) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Mon, 2 Jul 2012 15:50:07 -0700
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.33]) by
	SHSMSX101.ccr.corp.intel.com ([169.254.1.220]) with mapi id
	14.01.0355.002; Tue, 3 Jul 2012 06:50:06 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Saul Wold <sgw@linux.intel.com>
Thread-Topic: [poky] [PATCH 1/1] scripts/multilib-check: Check for multilib
	build results
Thread-Index: AQHNWKO3S/yO+qO3ckWv8SVPJemtRZcWlrbw
Date: Mon, 2 Jul 2012 22:50:05 +0000
Message-ID: <40776A41FC278F40B59438AD47D147A90FDC77E6@SHSMSX102.ccr.corp.intel.com>
References: <cover.1341266885.git.dongxiao.xu@intel.com>
	<143f3d11aa26ce16aa8d31a0cdfa063ae5a608e4.1341266885.git.dongxiao.xu@intel.com>
	<4FF2236A.3040909@linux.intel.com>
In-Reply-To: <4FF2236A.3040909@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] scripts/multilib-check: Check for multilib build results
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
X-List-Received-Date: Mon, 02 Jul 2012 22:50:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Saul Wold [mailto:sgw@linux.intel.com]
> Sent: Tuesday, July 03, 2012 6:41 AM
> To: Xu, Dongxiao
> Cc: poky@yoctoproject.org
> Subject: Re: [poky] [PATCH 1/1] scripts/multilib-check: Check for multili=
b build
> results
>=20
> On 07/02/2012 03:09 PM, Dongxiao Xu wrote:
> > This script is used to check whether the multilib build for a certain
> > recipe outcomes the right files/directories.
> >
> > The usage for the script is:
> >
> > $ source oe-init-build-env
> > $ multilib-check recipeA recipeB ...
> >
> > or
> >
> > $ source oe-init-build-env
> > $ multilib-check world
> >
> Is there a reason that this is an external script rather than a default t=
est as
> part of insane.bbclass.

The method in my script is based on the comparison between a normal build "=
WORKDIR/image" and a multilib build "WORKDIR/image", and this is not easy t=
o achieve in insane.bbclass.
Or do you have other ideas on how to perform this check? Suggestions are we=
lcome. :-)

Another thought for adding it as a separate script is that, we don't need t=
o run this script for each build, only recipe owner or multilib feature own=
er may need this script to check whether certain recipe is multilib enabled=
 or not.

>=20
> Maybe you have been in touch with RP about this?

No, we haven't discussed it before, this is the first draft.

>=20
> Also I think this should be part of oe-core, not in poky only.

If we do it in a separate script, where we should put for OE-Core?

Thanks,
Dongxiao

>=20
> Thanks
>=20
> Sau!
>=20
> > This fixes [YOCTO #2038]
> >
> > Signed-off-by: Dongxiao Xu<dongxiao.xu@intel.com>
> > ---
> >   scripts/multilib-check |  117
> ++++++++++++++++++++++++++++++++++++++++++++++++
> >   1 files changed, 117 insertions(+), 0 deletions(-)
> >   create mode 100755 scripts/multilib-check
> >
> > diff --git a/scripts/multilib-check b/scripts/multilib-check new file
> > mode 100755 index 0000000..69a5dd3
> > --- /dev/null
> > +++ b/scripts/multilib-check
> > @@ -0,0 +1,117 @@
> > +#!/usr/bin/env python
> > +
> > +import os
> > +import os.path
> > +import sys
> > +
> > +# AAA: BBB
> > +# AAA is the multilib prefix, BBB is its DEFAULTTUNE.
> > +multilib_arch_tune =3D {"lib32": "x86", "lib64": "x86-64"}
> > +
> > +# The machine we now support is x86 and x86-64.
> > +machine =3D "qemux86"
> > +
> > +def usage():
> > +    print("Usage: multilib-check recipe_name1 recipe_name2 ... \n \
> > +           or multilib-check world")
> > +
> > +def generate_multilib_config():
> > +    os.system("cp -f conf/local.conf conf/local.conf.orig")
> > +    f =3D open("conf/local.conf", "a")
> > +    f.write('require conf/multilib.conf\n')
> > +    multilibs =3D ""
> > +    for i in multilib_arch_tune.keys():
> > +        f.write('DEFAULTTUNE_virtclass-multilib-%s=3D"%s"\n' % (i,
> multilib_arch_tune[i]))
> > +        multilibs +=3D "multilib:%s " % i
> > +    f.write('MULTILIBS=3D"%s"\n' % multilibs.strip())
> > +    f.close()
> > +
> > +def restore_original_config():
> > +    os.system("mv -f conf/local.conf.orig conf/local.conf")
> > +
> > +def build_recipe(mach, recipe_name):
> > +    print("INFO: Building %s ..." % recipe_name)
> > +    return os.system("MACHINE=3D%s bitbake %s&>  /dev/null" % (mach,
> > +recipe_name))
> > +
> > +def get_variable(mach, recipe_name, variable):
> > +    return os.popen('bitbake -e %s | grep "^%s=3D"' % (recipe_name,
> > +variable)).readline().split("%s=3D" % variable)[1].strip("\"\n")
> > +
> > +# Check if dir2 contains the same set of files as in dir1.
> > +def compare_folders(dir1, dir2):
> > +    if not os.path.exists(dir1):
> > +        return
> > +    for i in os.listdir(dir1):
> > +        path_normal =3D os.path.join(dir1, i)
> > +        path_multilib =3D os.path.join(dir2, i)
> > +
> > +        if not os.path.exists(path_multilib):
> > +            print("ERROR: %s exists while %s doesn't" % (path_normal,
> path_multilib))
> > +            continue
> > +
> > +        if os.path.isdir(path_normal):
> > +            if not os.path.isdir(path_multilib):
> > +                print("ERROR: %s is a directory while %s is a file" %
> (path_normal, path_multilib))
> > +                continue
> > +            compare_folders(path_normal, path_multilib)
> > +        else:
> > +            if not os.path.isfile(path_multilib):
> > +                print("ERROR: %s is a file while %s is a directory" %
> > + (path_normal, path_multilib))
> > +
> > +def multilib_sanity_check(rootdir_normal, baselib_normal, rootdir_mult=
ilib,
> baselib_multilib):
> > +    compare_folders(rootdir_normal+"/usr/"+baselib_normal,
> rootdir_multilib+"/usr/"+baselib_multilib)
> > +    compare_folders(rootdir_normal+"/"+baselib_normal,
> > +rootdir_multilib+"/"+baselib_multilib)
> > +
> > +# Use bitbake -s to get the recipe list, for example "world"
> > +def get_recipe_list(name):
> > +    begin =3D False
> > +    recipe_list =3D []
> > +    fd =3D os.popen('bitbake -s %s' % name)
> > +    for i in fd:
> > +        if i.startswith("=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D"):
> > +            begin =3D True
> > +            continue
> > +        if begin and i.strip("\n"):
> > +            recipe_name =3D i.split()[0].strip()
> > +            if "native" in recipe_name:
> > +                continue
> > +            else:
> > +                recipe_list.append(recipe_name)
> > +
> > +    return recipe_list
> > +
> > +def main():
> > +    if len(sys.argv)<=3D 1:
> > +        usage()
> > +        exit(1)
> > +    elif len(sys.argv) =3D=3D 2 and sys.argv[1] =3D=3D "world":
> > +        recipe_list =3D get_recipe_list("world")
> > +    else:
> > +        recipe_list =3D sys.argv[1:]
> > +
> > +    mach =3D machine
> > +    generate_multilib_config()
> > +    try:
> > +        for i in range(0, len(recipe_list)):
> > +            print("INFO: checking for recipe %s ..." % recipe_list[i])
> > +            ret =3D build_recipe(mach, recipe_list[i])
> > +            if ret:
> > +                print("ERROR: Build %s failed" % recipe_list[i])
> > +                continue
> > +            rootdir_normal =3D get_variable(mach, recipe_list[i],
> "WORKDIR") + "/image"
> > +            baselib_normal =3D get_variable(mach, recipe_list[i],
> > + "baselib")
> > +
> > +            for j in multilib_arch_tune.keys():
> > +                ret =3D build_recipe(mach, j + "-" + recipe_list[i])
> > +                if ret:
> > +                    print("ERROR: Build %s failed" % (j + "-" +
> recipe_list[i]))
> > +                    continue
> > +                rootdir_multilib =3D get_variable(mach, j + "-" +
> recipe_list[i], "WORKDIR") + "/image"
> > +                baselib_multilib =3D get_variable(mach, j + "-" +
> > + recipe_list[i], "baselib")
> > +
> > +                multilib_sanity_check(rootdir_normal, baselib_normal,
> rootdir_multilib, baselib_multilib)
> > +    except Exception as e:
> > +        print "ERROR: %s" % e
> > +    finally:
> > +        restore_original_config()
> > +
> > +main()

