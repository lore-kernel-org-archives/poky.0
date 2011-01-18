Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 06DA84C80039
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 06:54:15 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0ICttLe006363; Tue, 18 Jan 2011 12:55:56 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id XXJJaiWs+M5S; Tue, 18 Jan 2011 12:55:55 +0000 (GMT)
Received: from [192.168.1.66] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0ICto0P006357
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 18 Jan 2011 12:55:52 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Dongxiao Xu <dongxiao.xu@intel.com>
In-Reply-To: <dab30a6f860cf8ef3b2ed29925e312e7d6749539.1295042140.git.dongxiao.xu@intel.com>
References: <cover.1295042138.git.dongxiao.xu@intel.com>
	<dab30a6f860cf8ef3b2ed29925e312e7d6749539.1295042140.git.dongxiao.xu@intel.com>
Date: Tue, 18 Jan 2011 12:53:51 +0000
Message-ID: <1295355232.14388.17559.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 3/5] bitbake: Introduce stamp-extra-info into build stamp file
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
X-List-Received-Date: Tue, 18 Jan 2011 12:54:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2011-01-15 at 06:14 +0800, Dongxiao Xu wrote:
> For certain tasks, we need additional information in build stamp file
> except the task name and file name. stamp-extra-info is introduced as
> an flag adding to the end of stamp file name.
> 
> Besides, if we need to add common flags for tasks, we can set value for
> macro BB_STAMP_EXTRA.
> 
> Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
> ---
>  bitbake/lib/bb/build.py    |   14 +++++---------
>  bitbake/lib/bb/cache.py    |   19 ++++++++++++++++++-
>  bitbake/lib/bb/runqueue.py |   12 ++++++------
>  bitbake/lib/bb/siggen.py   |   20 ++++++++++++++++++--
>  meta/classes/base.bbclass  |    2 +-
>  5 files changed, 48 insertions(+), 19 deletions(-)

I like what this patch does but I've ended up changing the code to be a
little different. I'll comment below on what those changes are and why
I've made them. I've merged the changed code into master and it
effectively behaves the same as your version for the needs of what we're
doing.

> diff --git a/bitbake/lib/bb/build.py b/bitbake/lib/bb/build.py
> index f127796..2175d54 100644
> --- a/bitbake/lib/bb/build.py
> +++ b/bitbake/lib/bb/build.py
> @@ -383,15 +383,11 @@ def stamp_internal(taskname, d, file_name):
>      When called in task context, d will be a data store, file_name will not be set
>      """
>      if file_name:
> -        stamp = d.stamp[file_name]
> +        is_dict = False
>      else:
> -        stamp = d.getVar('STAMP', True)
> -        file_name = d.getVar('BB_FILENAME', True)
> +        is_dict = True
>  
> -    if not stamp:
> -        return
> -
> -    stamp = bb.parse.siggen.stampfile(stamp, file_name, taskname)
> +    stamp = bb.parse.siggen.stampfile(d, file_name, taskname, is_dict)

I placed the dataCache vs dataDict code here rather than in siggen since
those differences aren't something that should concern the siggen code
and this is the correct abstraction point.

 
>      bb.utils.mkdirhier(os.path.dirname(stamp))
>  
> @@ -420,8 +416,8 @@ def del_stamp(task, d, file_name = None):
>      if os.access(stamp, os.F_OK):
>          os.remove(stamp)
>  
> -def stampfile(taskname, d):
> -    return stamp_internal(taskname, d, None)
> +def stampfile(taskname, d, file_name):
> +    return stamp_internal(taskname, d, file_name)

Here, we can do stampfile(taskname, d, file_name = None) and then remove
the need for the base.bbclass change in a similar way to the other stamp
functions.

>  def add_tasks(tasklist, d):
>      task_deps = data.getVar('_task_deps', d)
> diff --git a/bitbake/lib/bb/cache.py b/bitbake/lib/bb/cache.py
> index 9a2e2d5..2437d4a 100644
> --- a/bitbake/lib/bb/cache.py
> +++ b/bitbake/lib/bb/cache.py
> @@ -102,6 +104,11 @@ class RecipeInfo(namedtuple('RecipeInfo', recipe_fields)):
>                      for task in tasks)
>  
>      @classmethod
> +    def stampvar(cls, var, tasks, stamp, metadata):
> +        return dict((stamp + '.' + task, metadata.getVarFlag(task, var, True))
> +                    for task in tasks)
> +
> +    @classmethod

I found this very confusing. Why do we need to do all these string
operations joining task to stamp and so on? Why can't we just store a
list keyed by task?

The point of the class abstractions is to share useful functionality.
I've changed this to a flaglist method which pulls a set of flags from a
given list of variables.

>      def getvar(cls, var, metadata):
>          return metadata.getVar(var, True) or ''
>  
> @@ -126,6 +133,7 @@ class RecipeInfo(namedtuple('RecipeInfo', recipe_fields)):
>          if not pn in packages:
>              packages.append(pn)
>  
> +        stamp = cls.getvar('STAMP', metadata)
>          return RecipeInfo(
>              tasks            = tasks,
>              basetaskhashes   = cls.taskvar('BB_BASEHASH', tasks, metadata),
> @@ -147,7 +155,9 @@ class RecipeInfo(namedtuple('RecipeInfo', recipe_fields)):
>              defaultpref      = cls.intvar('DEFAULT_PREFERENCE', metadata),
>              broken           = cls.getvar('BROKEN', metadata),
>              not_world        = cls.getvar('EXCLUDE_FROM_WORLD', metadata),
> -            stamp            = cls.getvar('STAMP', metadata),
> +            stamp            = stamp,
> +            stamp_extra      = cls.getvar('BB_STAMP_EXTRA', metadata),
> +            stamp_extra_info = cls.stampvar('stamp-extra-info', tasks, stamp, metadata),
>              packages_dynamic = cls.listvar('PACKAGES_DYNAMIC', metadata),
>              depends          = cls.depvar('DEPENDS', metadata),
>              provides         = cls.depvar('PROVIDES', metadata),

I've removed BB_STAMP_EXTRA since we don't have a use for it at the
moment and it was just complicating the code without good reason. If we
do come up with a usecase we can add it easily enough.


> @@ -577,12 +589,17 @@ class CacheData(object):
>          self.bbfile_config_priorities = []
>  
>      def add_from_recipeinfo(self, fn, info):
> +        tasks = info.tasks
>          self.task_deps[fn] = info.task_deps
>          self.pkg_fn[fn] = info.pn
>          self.pkg_pn[info.pn].append(fn)
>          self.pkg_pepvpr[fn] = (info.pe, info.pv, info.pr)
>          self.pkg_dp[fn] = info.defaultpref
>          self.stamp[fn] = info.stamp
> +        self.stamp_extra[fn] = info.stamp_extra
> +
> +        for task in tasks:
> +            self.stamp_extra_info[self.stamp[fn] + '.' + task] = info.stamp_extra_info[self.stamp[fn] + '.' + task]

This is needlessly complicated.
 
> diff --git a/bitbake/lib/bb/siggen.py b/bitbake/lib/bb/siggen.py
> index 4dc09b3..48fe6af 100644
> --- a/bitbake/lib/bb/siggen.py
> +++ b/bitbake/lib/bb/siggen.py
> @@ -42,8 +42,24 @@ class SignatureGenerator(object):
>      def set_taskdata(self, hashes, deps):
>          return
>  
> -    def stampfile(self, stampbase, file_name, taskname):
> -        return "%s.%s" % (stampbase, taskname)
> +    def stampfile(self, d, file_name, taskname, is_dict):
> +        if is_dict:
> +            stamp = d.getVar('STAMP', True)
> +            file_name = d.getVar('BB_FILENAME', True)
> +            extra_info = taskname + '.' + (bb.data.getVarFlag(taskname, 'stamp-extra-info', d) or bb.data.getVar('BB_STAMP_EXTRA', d, True) or "")
> +            extra_info = bb.data.expand(extra_info, d)
> +        else:
> +            stamp = d.stamp[file_name]
> +            if stamp + "." + taskname in d.stamp_extra_info.keys():
> +                extra_info = taskname + '.' + (d.stamp_extra_info[stamp + "." + taskname] or d.stamp_extra[file_name] or "")
> +            else:
> +                extra_info = taskname + '.' + (d.stamp_extra[file_name] or "")
> +
> +        if not stamp:
> +            return
> +
> +        return "%s.%s" % (stamp, extra_info.rstrip('.'))
> +

Again, I think this is overcomplicated. Also, you changed this version
of the function but not the one in SignatureGeneratorBasicHash().

I'm hoping I didn't manage to break anything with my changes, let me
know if I have missed anything though.

Cheers,

Richard

 


