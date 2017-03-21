Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39ACEE009B2; Tue, 21 Mar 2017 09:40:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_MED,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 434F6E00961
	for <poky@yoctoproject.org>; Tue, 21 Mar 2017 09:40:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1490114427; x=1521650427;
	h=message-id:subject:from:to:cc:date:in-reply-to:
	references:mime-version:content-transfer-encoding;
	bh=1eaaNlTpf/3x05rQ11k2QD5ZzDR4eqEhPCSHTPxmvbk=;
	b=myGJP/qqDoMRcvHG9X7AZs7dSdOOwIGXKi9XII73GJmrBC08Q6+0qCqx
	3QAUemz1OHIsAZyy5iuPWWDi93teIA==;
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Mar 2017 09:40:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,200,1486454400"; d="scan'208";a="79479214"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.141])
	by fmsmga006.fm.intel.com with ESMTP; 21 Mar 2017 09:40:20 -0700
Message-ID: <1490114891.3261.177.camel@linux.intel.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: nitish jha <nitishjha16@gmail.com>
Date: Tue, 21 Mar 2017 10:48:11 -0600
In-Reply-To: <CABh+fobNXQK8NrDzwKRaOs4rWixEUJA3Bi6QL=we+XS6AsUjhA@mail.gmail.com>
References: <CABh+fobNXQK8NrDzwKRaOs4rWixEUJA3Bi6QL=we+XS6AsUjhA@mail.gmail.com>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [extendable-sdk] patch to fix devtool error
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 21 Mar 2017 16:40:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

which branch/commit are you working on? which commands do you execute?
seems that the module pathname is missing and python is not finding it.
By the way, read the poky/README to see how to send the patch to the
mailing list.

Leo


On Tue, 2017-03-21 at 14:16 +0100, nitish jha wrote:
> Hello All,
> 
> 
> While building extendable sdk i found error related to devtool 
> 
> 
> ERROR: Error executing a python function 
> 
> 
> The stack trace of python calls that resulted in this
> exception/failure was:
> File: 'copy_buildsystem', lineno: 148, function: <module>
>      0144:
> sstate_out, d,
>      0145:
> fixedlsbstring)
>      0146:
>      0147:
>  *** 0148:copy_buildsystem(d)
>      0149:
> File: 'copy_buildsystem', lineno: 59, function: copy_buildsystem
>      0055:        config.write(f)
>      0056:
>      0057:    # Create a layer for new recipes / appends
>      0058:    bbpath = d.getVar('BBPATH', True)
>  *** 0059:    bb.process.run(['devtool', '--bbpath', bbpath,
> '--basepath', baseoutpath, 'create-workspace', '--create-only',
> os.path.join(baseoutpath, 'workspace')])
>      0060:
>      0061:    # Create bblayers.conf
>      0062:    bb.utils.mkdirhier(baseoutpath + '/conf')
>      0063:    with open(baseoutpath + '/conf/bblayers.conf', 'w') as
> f:
> File: '/home/testuser/CAS/poky/bitbake/lib/bb/process.py', lineno:
> 155, function: run
>      0151:    else:
>      0152:        stdout, stderr = pipe.communicate(input)
>      0153:
>      0154:    if pipe.returncode != 0:
>  *** 0155:        raise ExecutionError(cmd, pipe.returncode, stdout,
> stderr)
>      0156:    return stdout, stderr
> Exception: ExecutionError: Execution of 'devtool --bbpath ' failed
> with exit code 1:
> Traceback (most recent call last):
>   File "/home/testuser/CAS/poky/scripts/devtool", line 287, in
> <module>
>     ret = main()
>   File "/home/testuser/CAS/poky/scripts/devtool", line 251, in main
>     scriptutils.load_plugins(logger, plugins, pluginpath)
>   File "/home/testuser/CAS/poky/scripts/lib/scriptutils.py", line 57,
> in load_plugins
>     plugin = load_plugin(name)
>   File "/home/testuser/CAS/poky/scripts/lib/scriptutils.py", line 48,
> in load_plugin
>     return imp.load_module(name, fp, pathname, description)
>   File "/home/testuser/CAS/poky/scripts/lib/devtool/upgrade.py", line
> 30, in <module>
>     import recipeutils
> ImportError: No module named recipeutils
> 
> 
> 
> 
> ERROR: Function failed: copy_buildsystem
> 
> 
> I found that lib path where devtool expects recipeutils is not correct
> so I appended recipeutils path to lib directory path of devtool
> 
> 
> patch details are:
> 
> 
> 
> 
> diff --git a/scripts/devtool b/scripts/devtool
> index 9ac6e79..715d045 100755
> --- a/scripts/devtool
> +++ b/scripts/devtool
> @@ -35,6 +35,9 @@ context = None
>  scripts_path = os.path.dirname(os.path.realpath(__file__))
>  lib_path = scripts_path + '/lib'
>  sys.path = sys.path + [lib_path]
> +
> +oe_path = os.path.abspath(os.path.join(scripts_path, "..", "meta",




>  "lib"))
> +sys.path.append(oe_path)
>  from devtool import DevtoolError, setup_tinfoil
>  import scriptutils
>  import argparse_oe
> -- 
> 
> 
> Can somebody test and update it in poky.
> 
> 
> Thanks and Regards
> -- 
> Nitish Jha
> 
> 
> 
> 
> -- 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky



