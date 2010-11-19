Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id F15854C80FA7
	for <poky@yoctoproject.org>; Fri, 19 Nov 2010 04:27:57 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAJARtHZ012608;
	Fri, 19 Nov 2010 10:27:55 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 12134-08; Fri, 19 Nov 2010 10:27:51 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAJARj8p012567
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 19 Nov 2010 10:27:45 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Dongxiao Xu <dongxiao.xu@intel.com>
In-Reply-To: <fa09979bfc38e15dc4b9ab199c11302284583a18.1289969353.git.dongxiao.xu@intel.com>
References: <cover.1289969353.git.dongxiao.xu@intel.com>
	<fa09979bfc38e15dc4b9ab199c11302284583a18.1289969353.git.dongxiao.xu@intel.com>
Date: Fri, 19 Nov 2010 10:27:32 +0000
Message-ID: <1290162452.1272.12090.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] bitbake: optimize file parsing speed
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
X-List-Received-Date: Fri, 19 Nov 2010 10:27:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-11-17 at 12:10 +0800, Dongxiao Xu wrote:
> build some data cache for generate_dependencies() on hand, and later
> each time when parsing the bb file, we do not need to build them again
> and again.
> 
> This optimization could get about 50% speed gain when parsing all ~800
> bb files.
> 
> Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
> ---
>  bitbake/lib/bb/cooker.py |    2 ++
>  bitbake/lib/bb/data.py   |   11 ++++++-----
>  2 files changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/bitbake/lib/bb/cooker.py b/bitbake/lib/bb/cooker.py
> index 33eb65e..05e6c16 100644
> --- a/bitbake/lib/bb/cooker.py
> +++ b/bitbake/lib/bb/cooker.py
> @@ -76,6 +76,8 @@ class BBCooker:
>  
>          self.configuration.data = bb.data.init()
>  
> +        bb.data.init_data_cache(self.configuration.data)
> +
>          if not server:
>              bb.data.setVar("BB_WORKERCONTEXT", "1", self.configuration.data)
>  
> diff --git a/bitbake/lib/bb/data.py b/bitbake/lib/bb/data.py
> index fee10cc..a9e539f 100644
> --- a/bitbake/lib/bb/data.py
> +++ b/bitbake/lib/bb/data.py
> @@ -296,17 +296,18 @@ def build_dependencies(key, keys, shelldeps, d):
>      #bb.note("Variable %s references %s and calls %s" % (key, str(deps), str(execs)))
>      #d.setVarFlag(key, "vardeps", deps)
>  
> -def generate_dependencies(d):
> +def init_data_cache(d):
> +    bb.data.keylist = set(key for key in d.keys() if not key.startswith("__"))
> +    bb.data.shelldeps = set(key for key in bb.data.keylist if d.getVarFlag(key, "export") and not d.getVarFlag(key, "unexport"))
>  
> -    keys = set(key for key in d.keys() if not key.startswith("__"))
> -    shelldeps = set(key for key in keys if d.getVarFlag(key, "export") and not d.getVarFlag(key, "unexport"))
> +def generate_dependencies(d):
>  
>      deps = {}
>      taskdeps = {}
>  
>      tasklist = bb.data.getVar('__BBTASKS', d) or []
>      for task in tasklist:
> -        deps[task] = build_dependencies(task, keys, shelldeps, d)
> +        deps[task] = build_dependencies(task, bb.data.keylist, bb.data.shelldeps, d)
>  
>          newdeps = deps[task]
>          seen = set()
> @@ -316,7 +317,7 @@ def generate_dependencies(d):
>              newdeps = set()
>              for dep in nextdeps:
>                  if dep not in deps:
> -                    deps[dep] = build_dependencies(dep, keys, shelldeps, d)
> +                    deps[dep] = build_dependencies(dep, bb.data.keylist, bb.data.shelldeps, d)
>                  newdeps |=  deps[dep]
>              newdeps -= seen
>          taskdeps[task] = seen | newdeps


I'm afraid this isn't going to be quite this simple although this does
prove those lines of code are a big hotspot in parsing.

Why? You're creating the key and export lists for the base configuration
data whereas the original code creates these lists for the *total*
parsed metadata. There will therefore be differences in the values held
by the two caches :(.

As an example, if you set:

FOO = "bar" in a .bb file, 'FOO' will not appear in your keywords cache.

Cheers,

Richard



