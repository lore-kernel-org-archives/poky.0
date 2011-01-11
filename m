Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 17A2E4C8085F
	for <poky@yoctoproject.org>; Tue, 11 Jan 2011 06:11:36 -0600 (CST)
Received: from [192.168.1.88] (unknown [83.217.123.106])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 13FED12EC118
	for <poky@yoctoproject.org>; Tue, 11 Jan 2011 06:51:42 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <571d7dd33677bc0ee071cf3bca2c44dd521f7703.1294726281.git.dongxiao.xu@intel.com>
References: <cover.1294726280.git.dongxiao.xu@intel.com>
	<571d7dd33677bc0ee071cf3bca2c44dd521f7703.1294726281.git.dongxiao.xu@intel.com>
Date: Tue, 11 Jan 2011 12:11:27 +0000
Message-ID: <1294747887.2516.8.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: [PATCH 2/3] bitbake: Introduce stamp-extra-info into build stamp file
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
X-List-Received-Date: Tue, 11 Jan 2011 12:11:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Dongxiao,

I've done a quick style review of this patch, comments inline.

On Tue, 2011-01-11 at 14:18 +0800, Dongxiao Xu wrote:
> For certain tasks, we need additional information in build stamp file
> except the task name and file name. stamp-extra-info is introduced as
> an flag adding to the end of stamp file name.
> 
> Besides, if we need to add common flags for tasks, we can set value for
> macro BB_STAMP_EXTRA.
> 
> Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
> ---
>  bitbake/lib/bb/build.py    |   10 +++-------
>  bitbake/lib/bb/cache.py    |   19 ++++++++++++++++++-
>  bitbake/lib/bb/runqueue.py |   12 ++++++------
>  bitbake/lib/bb/siggen.py   |   20 ++++++++++++++++++--
>  4 files changed, 45 insertions(+), 16 deletions(-)
> 
> diff --git a/bitbake/lib/bb/build.py b/bitbake/lib/bb/build.py
> index f127796..3b297b3 100644
> --- a/bitbake/lib/bb/build.py
> +++ b/bitbake/lib/bb/build.py
> @@ -383,15 +383,11 @@ def stamp_internal(taskname, d, file_name):
>      When called in task context, d will be a data store, file_name will not be set
>      """
>      if file_name:
> -        stamp = d.stamp[file_name]
> +        is_dict = 0
>      else:
> -        stamp = d.getVar('STAMP', True)
> -        file_name = d.getVar('BB_FILENAME', True)
> +        is_dict = 1
>  
> -    if not stamp:
> -        return
> -
> -    stamp = bb.parse.siggen.stampfile(stamp, file_name, taskname)
> +    stamp = bb.parse.siggen.stampfile(d, file_name, taskname, is_dict)

Nitpick, but could you please use True/False rather than 1/0 - IMHO it
makes the code more readable and the BitBake codebase has been gradually
moving in the direction of using the boolean types of late.

>  
>      bb.utils.mkdirhier(os.path.dirname(stamp))
>  
> diff --git a/bitbake/lib/bb/cache.py b/bitbake/lib/bb/cache.py
> index 9a2e2d5..2437d4a 100644
> --- a/bitbake/lib/bb/cache.py
> +++ b/bitbake/lib/bb/cache.py
> @@ -55,6 +55,8 @@ recipe_fields = (
>      'provides',
>      'task_deps',
>      'stamp',
> +    'stamp_extra',
> +    'stamp_extra_info',
>      'broken',
>      'not_world',
>      'skipped',
> @@ -102,6 +104,11 @@ class RecipeInfo(namedtuple('RecipeInfo', recipe_fields)):
>                      for task in tasks)
>  
>      @classmethod
> +    def stampvar(cls, var, tasks, stamp, metadata):
> +        return dict((stamp + '.' + task, metadata.getVarFlag(task, var, True))
> +                    for task in tasks)
> +
> +    @classmethod
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
> @@ -562,6 +572,8 @@ class CacheData(object):
>          self.task_queues = {}
>          self.task_deps = {}
>          self.stamp = {}
> +        self.stamp_extra = {}
> +        self.stamp_extra_info = {}
>          self.preferred = {}
>          self.tasks = {}
>          self.basetaskhash = {}
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
>  
>          provides = [info.pn]
>          for provide in info.provides:
> diff --git a/bitbake/lib/bb/runqueue.py b/bitbake/lib/bb/runqueue.py
> index a465275..764ae7e 100644
> --- a/bitbake/lib/bb/runqueue.py
> +++ b/bitbake/lib/bb/runqueue.py
> @@ -794,7 +794,7 @@ class RunQueue:
>                  continue
>              fn = self.rqdata.taskData.fn_index[self.rqdata.runq_fnid[task]]
>              taskname = self.rqdata.runq_task[task]
> -            stampfile = bb.parse.siggen.stampfile(self.rqdata.dataCache.stamp[fn], fn, taskname)
> +            stampfile = bb.parse.siggen.stampfile(self.rqdata.dataCache, fn, taskname, 0)

False, rather than 0, here please.

>              # If the stamp is missing its not current
>              if not os.access(stampfile, os.F_OK):
>                  del unchecked[task]
> @@ -815,7 +815,7 @@ class RunQueue:
>                  if task in unchecked:
>                      fn = self.taskData.fn_index[self.rqdata.runq_fnid[task]]
>                      taskname = self.rqdata.runq_task[task]
> -                    stampfile = bb.parse.siggen.stampfile(self.rqdata.dataCache.stamp[fn], fn, taskname)
> +                    stampfile = bb.parse.siggen.stampfile(self.rqdata.dataCache, fn, taskname, 0)

And again.

>                      iscurrent = True
>  
>                      t1 = os.stat(stampfile)[stat.ST_MTIME]
> @@ -823,7 +823,7 @@ class RunQueue:
>                          if iscurrent:
>                              fn2 = self.taskData.fn_index[self.rqdata.runq_fnid[dep]]
>                              taskname2 = self.rqdata.runq_task[dep]
> -                            stampfile2 = bb.parse.siggen.stampfile(self.rqdata.dataCache.stamp[fn2], fn2, taskname2)
> +                            stampfile2 = bb.parse.siggen.stampfile(self.rqdata.dataCache, fn2, taskname2, 0)

And again

>                              if fn == fn2 or (fulldeptree and fn2 not in stampwhitelist):
>                                  if dep in notcurrent:
>                                      iscurrent = False
> @@ -875,7 +875,7 @@ class RunQueue:
>          if taskname is None:
>              taskname = self.rqdata.runq_task[task]
>  
> -        stampfile = bb.parse.siggen.stampfile(self.rqdata.dataCache.stamp[fn], fn, taskname)
> +        stampfile = bb.parse.siggen.stampfile(self.rqdata.dataCache, fn, taskname, 0)

And again

>  
>          # If the stamp is missing its not current
>          if not os.access(stampfile, os.F_OK):
> @@ -896,8 +896,8 @@ class RunQueue:
>              if iscurrent:
>                  fn2 = self.rqdata.taskData.fn_index[self.rqdata.runq_fnid[dep]]
>                  taskname2 = self.rqdata.runq_task[dep]
> -                stampfile2 = bb.parse.siggen.stampfile(self.rqdata.dataCache.stamp[fn2], fn2, taskname2)
> -                stampfile3 = bb.parse.siggen.stampfile(self.rqdata.dataCache.stamp[fn2], fn2, taskname2 + "_setscene")
> +                stampfile2 = bb.parse.siggen.stampfile(self.rqdata.dataCache, fn2, taskname2, 0)
> +                stampfile3 = bb.parse.siggen.stampfile(self.rqdata.dataCache, fn2, taskname2 + "_setscene", 0)

And again, and again :-)

>                  t2 = get_timestamp(stampfile2)
>                  t3 = get_timestamp(stampfile3)
>                  if t3 and t3 > t2:
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

As you have a lot of calls to stampfile with is_dict set to False I'd
recommend you define the function with a default parameter of False for
is_dict:

def stampfile(self, d, file_name, taskname, is_dict=False):

that way you can avoid typing this parameter for most of the calls to
this function. 6 times, by my count.

> +        if is_dict:
> +            stamp = d.getVar('STAMP', True)
> +            file_name = d.getVar('BB_FILENAME', True)
> +            extra_info = taskname + '.' + (bb.data.getVarFlag(taskname, 'stamp-extra-info', d) or bb.data.getVar('BB_STAMP_EXTRA', d, True) or "")
> +            extra_info = bb.data.expand(extra_info, d)

Haven't you already expanded this by passing True as the third argument
to getVar() above?

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
>  
>  class SignatureGeneratorBasic(SignatureGenerator):
>      """

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


