Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 21B0D4C80B70
	for <poky@yoctoproject.org>; Thu,  6 Jan 2011 05:07:05 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p06B8grk026470; Thu, 6 Jan 2011 11:08:42 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 6z+vvHpXevYm; Thu,  6 Jan 2011 11:08:42 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p06B8d5O026459
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 6 Jan 2011 11:08:41 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Yu Ke <ke.yu@intel.com>
In-Reply-To: <0222a4a459b310da4e6ae4737a1639a4b5bf128d.1293457442.git.ke.yu@intel.com>
References: <cover.1293457442.git.ke.yu@intel.com>
	<0222a4a459b310da4e6ae4737a1639a4b5bf128d.1293457442.git.ke.yu@intel.com>
Date: Thu, 06 Jan 2011 11:06:35 +0000
Message-ID: <1294311995.17519.24194.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 7/8] Fetcher: break the "SRCREVINACTION" deadlock
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
X-List-Received-Date: Thu, 06 Jan 2011 11:07:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2010-12-27 at 21:58 +0800, Yu Ke wrote:
> Current fetcher has annoying "SRCREVINACTION" deadlock,
> which occurs when SRCREV=${AUTOREV}=@bb.fetch.get_srcrev():
> get_srcrev()->setup_localpath()->srcrev_internal_helper()
> ->evaluate SRCREV->get_srcrev()
> 
> current fetcher resolve the deadlock by introducing a
> "SRCREVINACTION" condition check. Althoguh it works, it is
> indeed not clean.
> 
> This patch use antoehr idea to break the deadlock: break
> the dependency among SRCREV and get_srcrev(), i.e. assign
> a specific keyword "AUTOINC" to AUTOREV. when Fetcher meet
> this keyword, it will check and set the latest revision to
> urldata.revision. get_srcrev later can use the urldata.revision
> for value evaluation(SRCPV etc). In this case, SRCREV no longer
> depends on get_srcrev, and there is not deadlock anymore.
> 
> In implementation side, several things are done:
> a) set the revision in FetchData:__init__, so that
>    urldata.revision is ready when get_srcrev() need it
> b) init fetch method specific data in Fetch:supports, so that
>    Fetch.latest_revision() can be conducted when FetchData:
>    __init__ need it to achieve a)

I do think we need to make this change. 

Since we're not doing this in a fetcher "version 2" currently there is
the backwards compatibility question though. What does this code do if
the bitbake.conf change isn't made? Can we detect the old situation and
error at least? This change is going to need a little discussion on the
bitbake-dev list...

The answer may be that we need to start a fetch2 codebase to carry on
with this kind of cleanup.

Cheers,

Richard


> Signed-off-by: Yu Ke <ke.yu@intel.com>
> ---
>  bitbake/lib/bb/fetch/__init__.py |   43 ++++++++++++-------------------------
>  bitbake/lib/bb/fetch/bzr.py      |    6 -----
>  bitbake/lib/bb/fetch/git.py      |    8 +------
>  bitbake/lib/bb/fetch/hg.py       |   10 +-------
>  bitbake/lib/bb/fetch/svn.py      |   10 +-------
>  meta/conf/bitbake.conf           |    2 +-
>  6 files changed, 20 insertions(+), 59 deletions(-)
> 
> diff --git a/bitbake/lib/bb/fetch/__init__.py b/bitbake/lib/bb/fetch/__init__.py
> index d4a5fa3..c710931 100644
> --- a/bitbake/lib/bb/fetch/__init__.py
> +++ b/bitbake/lib/bb/fetch/__init__.py
> @@ -363,8 +363,6 @@ def localpaths(d):
>  
>      return local
>  
> -srcrev_internal_call = False
> -
>  def get_srcrev(d):
>      """
>      Return the version string for the current package
> @@ -374,18 +372,6 @@ def get_srcrev(d):
>      have been set.
>      """
>  
> -    #
> -    # Ugly code alert. localpath in the fetchers will try to evaluate SRCREV which
> -    # could translate into a call to here. If it does, we need to catch this
> -    # and provide some way so it knows get_srcrev is active instead of being
> -    # some number etc. hence the srcrev_internal_call tracking and the magic
> -    # "SRCREVINACTION" return value.
> -    #
> -    # Neater solutions welcome!
> -    #
> -    if bb.fetch.srcrev_internal_call:
> -        return "SRCREVINACTION"
> -
>      scms = []
>  
>      # Only call setup_localpath on URIs which supports_srcrev()
> @@ -548,11 +534,16 @@ class FetchData(object):
>          self.md5_expected = bb.data.getVarFlag("SRC_URI", self.md5_name, d)
>          self.sha256_expected = bb.data.getVarFlag("SRC_URI", self.sha256_name, d)
>  
> +        self.method = None
>          for m in methods:
>              if m.supports(url, self, d):
>                  self.method = m
> -                return
> -        raise NoMethodError("Missing implementation for url %s" % url)
> +                break
> +        if not self.method:
> +            raise NoMethodError("Missing implementation for url %s" % url)
> +
> +        if self.method.supports_srcrev():
> +            self.revision = Fetch.srcrev_internal_helper(self, d);
>  
>      def setup_localpath(self, d):
>          self.setup = True
> @@ -575,11 +566,7 @@ class FetchData(object):
>                              local = ""
>                  self.localpath = local
>              if not local:
> -                try:
> -                    bb.fetch.srcrev_internal_call = True
> -                    self.localpath = self.method.localpath(self.url, self, d)
> -                finally:
> -                    bb.fetch.srcrev_internal_call = False
> +                self.localpath = self.method.localpath(self.url, self, d)
>                  # We have to clear data's internal caches since the cached value of SRCREV is now wrong.
>                  # Horrible...
>                  bb.data.delVar("ISHOULDNEVEREXIST", d)
> @@ -678,17 +665,16 @@ class Fetch(object):
>          """
>          Return:
>              a) a source revision if specified
> -            b) True if auto srcrev is in action
> -            c) False otherwise
> +            b) latest revision if SREREV="AUTOINC"
> +            c) "" if not specified
>          """
> -
>          if 'rev' in ud.parm:
>              return ud.parm['rev']
>  
>          if 'tag' in ud.parm:
>              return ud.parm['tag']
>  
> -        rev = None
> +        rev = ""
>          if 'name' in ud.parm:
>              pn = data.getVar("PN", d, 1)
>              rev = data.getVar("SRCREV_%s_pn-%s" % (ud.parm['name'], pn), d, 1)
> @@ -700,10 +686,9 @@ class Fetch(object):
>              rev = data.getVar("SRCREV", d, 1)
>          if rev == "INVALID":
>              raise InvalidSRCREV("Please set SRCREV to a valid value")
> -        if not rev:
> -            return False
> -        if rev is "SRCREVINACTION":
> -            return True
> +        if rev == "AUTOINC":
> +            rev = ud.method.latest_revision(ud.url, ud, d)
> +
>          return rev
>  
>      srcrev_internal_helper = staticmethod(srcrev_internal_helper)
> diff --git a/bitbake/lib/bb/fetch/bzr.py b/bitbake/lib/bb/fetch/bzr.py
> index b29bbce..1573116 100644
> --- a/bitbake/lib/bb/fetch/bzr.py
> +++ b/bitbake/lib/bb/fetch/bzr.py
> @@ -52,12 +52,6 @@ class Bzr(Fetch):
>          ud.pkgdir = os.path.join(data.expand('${BZRDIR}', d), ud.host, relpath)
>  
>      def localpath (self, url, ud, d):
> -        revision = Fetch.srcrev_internal_helper(ud, d)
> -        if revision is True:
> -            ud.revision = self.latest_revision(url, ud, d)
> -        elif revision:
> -            ud.revision = revision
> -
>          if not ud.revision:
>              ud.revision = self.latest_revision(url, ud, d)
>  
> diff --git a/bitbake/lib/bb/fetch/git.py b/bitbake/lib/bb/fetch/git.py
> index df582a3..6779afb 100644
> --- a/bitbake/lib/bb/fetch/git.py
> +++ b/bitbake/lib/bb/fetch/git.py
> @@ -65,13 +65,7 @@ class Git(Fetch):
>          ud.basecmd = data.getVar("FETCHCMD_git", d, True) or "git"
>  
>      def localpath(self, url, ud, d):
> -
> -        tag = Fetch.srcrev_internal_helper(ud, d)
> -        if tag is True:
> -            ud.tag = self.latest_revision(url, ud, d)
> -        elif tag:
> -            ud.tag = tag
> -
> +        ud.tag = ud.revision
>          if not ud.tag or ud.tag == "master":
>              ud.tag = self.latest_revision(url, ud, d)
>  
> diff --git a/bitbake/lib/bb/fetch/hg.py b/bitbake/lib/bb/fetch/hg.py
> index 85d640d..b2c1b0b 100644
> --- a/bitbake/lib/bb/fetch/hg.py
> +++ b/bitbake/lib/bb/fetch/hg.py
> @@ -66,14 +66,8 @@ class Hg(Fetch):
>      def localpath(self, url, ud, d):
>          if 'rev' in ud.parm:
>              ud.revision = ud.parm['rev']
> -        else:
> -            tag = Fetch.srcrev_internal_helper(ud, d)
> -            if tag is True:
> -                ud.revision = self.latest_revision(url, ud, d)
> -            elif tag:
> -                ud.revision = tag
> -            else:
> -                ud.revision = self.latest_revision(url, ud, d)
> +        elif not ud.revision:
> +            ud.revision = self.latest_revision(url, ud, d)
>  
>          ud.localfile = data.expand('%s_%s_%s_%s.tar.gz' % (ud.module.replace('/', '.'), ud.host, ud.path.replace('/', '.'), ud.revision), d)
>  
> diff --git a/bitbake/lib/bb/fetch/svn.py b/bitbake/lib/bb/fetch/svn.py
> index 4e97a30..68b2b2c 100644
> --- a/bitbake/lib/bb/fetch/svn.py
> +++ b/bitbake/lib/bb/fetch/svn.py
> @@ -79,15 +79,9 @@ class Svn(Fetch):
>              if "DATE" in pv:
>                  ud.revision = ""
>              else:
> -                rev = Fetch.srcrev_internal_helper(ud, d)
> -                if rev is True:
> -                    ud.revision = self.latest_revision(url, ud, d)
> +                # use the initizlied revision
> +                if ud.revision:
>                      ud.date = ""
> -                elif rev:
> -                    ud.revision = rev
> -                    ud.date = ""
> -                else:
> -                    ud.revision = ""
>  
>          ud.localfile = data.expand('%s_%s_%s_%s_%s.tar.gz' % (ud.module.replace('/', '.'), ud.host, ud.path.replace('/', '.'), ud.revision, ud.date), d)
>  
> diff --git a/meta/conf/bitbake.conf b/meta/conf/bitbake.conf
> index c26beea..d1b3fdc 100644
> --- a/meta/conf/bitbake.conf
> +++ b/meta/conf/bitbake.conf
> @@ -536,7 +536,7 @@ UPDATECOMMAND_cvs = "/usr/bin/env cvs -d${CVSROOT} update -d -P ${CVSCOOPTS}"
>  UPDATECOMMAND_svn = "/usr/bin/env svn update ${SVNCOOPTS}"
>  SRCDATE = "${DATE}"
>  SRCREV = "INVALID"
> -AUTOREV = "${SRCPV}"
> +AUTOREV = "AUTOINC"
>  SRCPV = "${@bb.fetch.get_srcrev(d)}"
>  
>  SRC_URI = "file://${FILE}"



