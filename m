Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1840E006AD
	for <poky@yoctoproject.org>; Mon,  2 Jul 2012 15:40:43 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 02 Jul 2012 15:40:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="118256259"
Received: from unknown (HELO [10.255.12.182]) ([10.255.12.182])
	by AZSMGA002.ch.intel.com with ESMTP; 02 Jul 2012 15:40:43 -0700
Message-ID: <4FF2236A.3040909@linux.intel.com>
Date: Mon, 02 Jul 2012 15:40:42 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Dongxiao Xu <dongxiao.xu@intel.com>
References: <cover.1341266885.git.dongxiao.xu@intel.com>
	<143f3d11aa26ce16aa8d31a0cdfa063ae5a608e4.1341266885.git.dongxiao.xu@intel.com>
In-Reply-To: <143f3d11aa26ce16aa8d31a0cdfa063ae5a608e4.1341266885.git.dongxiao.xu@intel.com>
Cc: poky@yoctoproject.org
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
X-List-Received-Date: Mon, 02 Jul 2012 22:40:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/02/2012 03:09 PM, Dongxiao Xu wrote:
> This script is used to check whether the multilib build for a certain
> recipe outcomes the right files/directories.
>
> The usage for the script is:
>
> $ source oe-init-build-env
> $ multilib-check recipeA recipeB ...
>
> or
>
> $ source oe-init-build-env
> $ multilib-check world
>
Is there a reason that this is an external script rather than a default 
test as part of insane.bbclass.

Maybe you have been in touch with RP about this?

Also I think this should be part of oe-core, not in poky only.

Thanks

Sau!

> This fixes [YOCTO #2038]
>
> Signed-off-by: Dongxiao Xu<dongxiao.xu@intel.com>
> ---
>   scripts/multilib-check |  117 ++++++++++++++++++++++++++++++++++++++++++++++++
>   1 files changed, 117 insertions(+), 0 deletions(-)
>   create mode 100755 scripts/multilib-check
>
> diff --git a/scripts/multilib-check b/scripts/multilib-check
> new file mode 100755
> index 0000000..69a5dd3
> --- /dev/null
> +++ b/scripts/multilib-check
> @@ -0,0 +1,117 @@
> +#!/usr/bin/env python
> +
> +import os
> +import os.path
> +import sys
> +
> +# AAA: BBB
> +# AAA is the multilib prefix, BBB is its DEFAULTTUNE.
> +multilib_arch_tune = {"lib32": "x86", "lib64": "x86-64"}
> +
> +# The machine we now support is x86 and x86-64.
> +machine = "qemux86"
> +
> +def usage():
> +    print("Usage: multilib-check recipe_name1 recipe_name2 ... \n \
> +           or multilib-check world")
> +
> +def generate_multilib_config():
> +    os.system("cp -f conf/local.conf conf/local.conf.orig")
> +    f = open("conf/local.conf", "a")
> +    f.write('require conf/multilib.conf\n')
> +    multilibs = ""
> +    for i in multilib_arch_tune.keys():
> +        f.write('DEFAULTTUNE_virtclass-multilib-%s="%s"\n' % (i, multilib_arch_tune[i]))
> +        multilibs += "multilib:%s " % i
> +    f.write('MULTILIBS="%s"\n' % multilibs.strip())
> +    f.close()
> +
> +def restore_original_config():
> +    os.system("mv -f conf/local.conf.orig conf/local.conf")
> +
> +def build_recipe(mach, recipe_name):
> +    print("INFO: Building %s ..." % recipe_name)
> +    return os.system("MACHINE=%s bitbake %s&>  /dev/null" % (mach, recipe_name))
> +
> +def get_variable(mach, recipe_name, variable):
> +    return os.popen('bitbake -e %s | grep "^%s="' % (recipe_name, variable)).readline().split("%s=" % variable)[1].strip("\"\n")
> +
> +# Check if dir2 contains the same set of files as in dir1.
> +def compare_folders(dir1, dir2):
> +    if not os.path.exists(dir1):
> +        return
> +    for i in os.listdir(dir1):
> +        path_normal = os.path.join(dir1, i)
> +        path_multilib = os.path.join(dir2, i)
> +
> +        if not os.path.exists(path_multilib):
> +            print("ERROR: %s exists while %s doesn't" % (path_normal, path_multilib))
> +            continue
> +
> +        if os.path.isdir(path_normal):
> +            if not os.path.isdir(path_multilib):
> +                print("ERROR: %s is a directory while %s is a file" % (path_normal, path_multilib))
> +                continue
> +            compare_folders(path_normal, path_multilib)
> +        else:
> +            if not os.path.isfile(path_multilib):
> +                print("ERROR: %s is a file while %s is a directory" % (path_normal, path_multilib))
> +
> +def multilib_sanity_check(rootdir_normal, baselib_normal, rootdir_multilib, baselib_multilib):
> +    compare_folders(rootdir_normal+"/usr/"+baselib_normal, rootdir_multilib+"/usr/"+baselib_multilib)
> +    compare_folders(rootdir_normal+"/"+baselib_normal, rootdir_multilib+"/"+baselib_multilib)
> +
> +# Use bitbake -s to get the recipe list, for example "world"
> +def get_recipe_list(name):
> +    begin = False
> +    recipe_list = []
> +    fd = os.popen('bitbake -s %s' % name)
> +    for i in fd:
> +        if i.startswith("============"):
> +            begin = True
> +            continue
> +        if begin and i.strip("\n"):
> +            recipe_name = i.split()[0].strip()
> +            if "native" in recipe_name:
> +                continue
> +            else:
> +                recipe_list.append(recipe_name)
> +
> +    return recipe_list
> +
> +def main():
> +    if len(sys.argv)<= 1:
> +        usage()
> +        exit(1)
> +    elif len(sys.argv) == 2 and sys.argv[1] == "world":
> +        recipe_list = get_recipe_list("world")
> +    else:
> +        recipe_list = sys.argv[1:]
> +
> +    mach = machine
> +    generate_multilib_config()
> +    try:
> +        for i in range(0, len(recipe_list)):
> +            print("INFO: checking for recipe %s ..." % recipe_list[i])
> +            ret = build_recipe(mach, recipe_list[i])
> +            if ret:
> +                print("ERROR: Build %s failed" % recipe_list[i])
> +                continue
> +            rootdir_normal = get_variable(mach, recipe_list[i], "WORKDIR") + "/image"
> +            baselib_normal = get_variable(mach, recipe_list[i], "baselib")
> +
> +            for j in multilib_arch_tune.keys():
> +                ret = build_recipe(mach, j + "-" + recipe_list[i])
> +                if ret:
> +                    print("ERROR: Build %s failed" % (j + "-" + recipe_list[i]))
> +                    continue
> +                rootdir_multilib = get_variable(mach, j + "-" + recipe_list[i], "WORKDIR") + "/image"
> +                baselib_multilib = get_variable(mach, j + "-" + recipe_list[i], "baselib")
> +
> +                multilib_sanity_check(rootdir_normal, baselib_normal, rootdir_multilib, baselib_multilib)
> +    except Exception as e:
> +        print "ERROR: %s" % e
> +    finally:
> +        restore_original_config()
> +
> +main()

