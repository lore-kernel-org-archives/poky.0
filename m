Return-Path: <B29882@freescale.com>
Received: from db3outboundpool.messaging.microsoft.com
	(db3ehsobe002.messaging.microsoft.com [213.199.154.140])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72B93E0027D
	for <poky@yoctoproject.org>; Mon, 30 Jul 2012 15:52:22 -0700 (PDT)
Received: from mail73-db3-R.bigfish.com (10.3.81.250) by
	DB3EHSOBE002.bigfish.com (10.3.84.22) with Microsoft SMTP Server id
	14.1.225.23; Mon, 30 Jul 2012 22:52:20 +0000
Received: from mail73-db3 (localhost [127.0.0.1])	by mail73-db3-R.bigfish.com
	(Postfix) with ESMTP id 57D3714023A;
	Mon, 30 Jul 2012 22:52:20 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1202hzz8275ch8275bh8275dhz2dh2a8h668h839h8e2h8e3hf0ah107ah10d2hbe9i)
Received: from mail73-db3 (localhost.localdomain [127.0.0.1]) by mail73-db3
	(MessageSwitch) id 1343688738424953_13996;
	Mon, 30 Jul 2012 22:52:18 +0000 (UTC)
Received: from DB3EHSMHS002.bigfish.com (unknown [10.3.81.254])	by
	mail73-db3.bigfish.com (Postfix) with ESMTP id 6568B4A0046;
	Mon, 30 Jul 2012 22:52:18 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB3EHSMHS002.bigfish.com
	(10.3.87.102) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Mon, 30 Jul 2012 22:52:17 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.109]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.02.0298.005; Mon, 30 Jul 2012 17:52:15 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [poky] [denzil][PATCH 1/9] bitbake/fetch: Spell out which
	fetcher backends support and recommend checksums
Thread-Index: AQHNbqX2zHQCco3130e8Mjn8BFdUyQ==
Date: Mon, 30 Jul 2012 22:52:15 +0000
Message-ID: <CAEsOVNdkMmJT5T3zUbKHcFXEFWPbHJ-rXrSnU=aaeBUjE--rJw@mail.gmail.com>
References: <cover.1341354357.git.raj.khem@gmail.com>
	<f6a37520b3bcecef1618bf98a15eac5b69000b78.1341354357.git.raj.khem@gmail.com>
In-Reply-To: <f6a37520b3bcecef1618bf98a15eac5b69000b78.1341354357.git.raj.khem@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [denzil][PATCH 1/9] bitbake/fetch: Spell out which fetcher backends support and recommend checksums
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 30 Jul 2012 22:52:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <0ADB67D1F6D803439896EAED945F08E8@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 3, 2012 at 5:32 PM, Khem Raj <raj.khem@gmail.com> wrote:
> From: Richard Purdie <richard.purdie@linuxfoundation.org>
>
> There were some hardcoded behaviours in the system for which backends
> support checksums verses which backends recommend them verses which
> don't recommend them.
>
> This moves the functionality into specific fetchers and then makes the
> general code generic. This cleans up the codebase and fixes some corner
> cases such as trying to checksum directories returned by the git fetcher.
>
> (Bitbake rev: ef6d268f7b8527541a7fb044cf95a973be4097f4)
>
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

This patch is causing the following issue in the denzil branch of poky:

NOTE: package libpam-1.1.5-r3: task do_fetch: Started
ERROR: Error executing a python function in
/local/home/mattsm/git/poky-upstream/meta/recipes-extended/pam/libpam_1.1.5=
.bb:
IOError: [Errno 2] No such file or directory:
'/local/home/mattsm/git/poky-upstream/meta/recipes-extended/pam/libpam/./pa=
m.d/*'

ERROR: The stack trace of python calls that resulted in this
exception/failure was:
ERROR:   File "base_do_fetch", line 18, in <module>
ERROR:
ERROR:   File "base_do_fetch", line 13, in base_do_fetch
ERROR:
ERROR:   File "/local/home/mattsm/git/poky-upstream/bitbake/lib/bb/fetch2/_=
_init__.py",
line 1037, in download
ERROR:     update_stamp(u, ud, self.d)
ERROR:
ERROR:   File "/local/home/mattsm/git/poky-upstream/bitbake/lib/bb/fetch2/_=
_init__.py",
line 335, in update_stamp
ERROR:     verify_checksum(u, ud, d)
ERROR:
ERROR:   File "/local/home/mattsm/git/poky-upstream/bitbake/lib/bb/fetch2/_=
_init__.py",
line 277, in verify_checksum
ERROR:     md5data =3D bb.utils.md5_file(ud.localpath)
ERROR:
ERROR:   File "/local/home/mattsm/git/poky-upstream/bitbake/lib/bb/utils.py=
",
line 482, in md5_file
ERROR:     for line in open(filename):
ERROR:
ERROR: The code that was being executed was:
ERROR:      0014:        except bb.fetch2.BBFetchException, e:
ERROR:      0015:            raise bb.build.FuncFailed(e)
ERROR:      0016:
ERROR:      0017:
ERROR:  *** 0018:base_do_fetch(d)
ERROR:      0019:
ERROR: (file: 'base_do_fetch', lineno: 18, function: <module>)
ERROR:      0009:       bb.data.update_data(localdata)
ERROR:      0010:
ERROR:      0011:        try:
ERROR:      0012:            fetcher =3D bb.fetch2.Fetch(src_uri, localdata=
)
ERROR:  *** 0013:            fetcher.download()
ERROR:      0014:        except bb.fetch2.BBFetchException, e:
ERROR:      0015:            raise bb.build.FuncFailed(e)
ERROR:      0016:
ERROR:      0017:
ERROR: (file: 'base_do_fetch', lineno: 13, function: base_do_fetch)
ERROR: Function failed: base_do_fetch
ERROR: Logfile of failure stored in:
/local/home/mattsm/git/poky-upstream/build-denzil/tmp/work/ppce5500-poky-li=
nux/libpam-1.1.5-r3/temp/log.do_fetch.9368
NOTE: package libpam-1.1.5-r3: task do_fetch: Failed
ERROR: Task 0 (/local/home/mattsm/git/poky-upstream/meta/recipes-extended/p=
am/libpam_1.1.5.bb,
do_fetch) failed with exit code '1'

-M

>
> Conflicts:
>
>         bitbake/lib/bb/fetch2/__init__.py
>
> Signed-off-by: Khem Raj <kraj@juniper.net>
> ---
>  bitbake/lib/bb/fetch2/__init__.py |   56 ++++++++++++++++++++++++-------=
------
>  bitbake/lib/bb/fetch2/git.py      |    3 ++
>  bitbake/lib/bb/fetch2/ssh.py      |    3 ++
>  bitbake/lib/bb/fetch2/wget.py     |    3 ++
>  4 files changed, 46 insertions(+), 19 deletions(-)
>
> diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__=
init__.py
> index 414cc2b..ec043a8 100644
> --- a/bitbake/lib/bb/fetch2/__init__.py
> +++ b/bitbake/lib/bb/fetch2/__init__.py
> @@ -268,30 +268,31 @@ def verify_checksum(u, ud, d):
>      matched
>      """
>
> -    if not ud.type in ["http", "https", "ftp", "ftps"]:
> +    if not ud.method.supports_checksum(ud):
>          return
>
>      md5data =3D bb.utils.md5_file(ud.localpath)
>      sha256data =3D bb.utils.sha256_file(ud.localpath)
>
> -    # If strict checking enabled and neither sum defined, raise error
> -    strict =3D d.getVar("BB_STRICT_CHECKSUM", True) or None
> -    if (strict and ud.md5_expected =3D=3D None and ud.sha256_expected =
=3D=3D None):
> -        raise FetchError('No checksum specified for %s, please add at le=
ast one to the recipe:\n'
> -                         'SRC_URI[%s] =3D "%s"\nSRC_URI[%s] =3D "%s"' %
> -                         (ud.localpath, ud.md5_name, md5data,
> -                         ud.sha256_name, sha256data), u)
> -
> -    # Log missing sums so user can more easily add them
> -    if ud.md5_expected =3D=3D None:
> -        logger.warn('Missing md5 SRC_URI checksum for %s, consider addin=
g to the recipe:\n'
> -                    'SRC_URI[%s] =3D "%s"',
> -                    ud.localpath, ud.md5_name, md5data)
> -
> -    if ud.sha256_expected =3D=3D None:
> -        logger.warn('Missing sha256 SRC_URI checksum for %s, consider ad=
ding to the recipe:\n'
> -                    'SRC_URI[%s] =3D "%s"',
> -                    ud.localpath, ud.sha256_name, sha256data)
> +    if ud.method.recommends_checksum(ud):
> +        # If strict checking enabled and neither sum defined, raise erro=
r
> +        strict =3D d.getVar("BB_STRICT_CHECKSUM", True) or None
> +        if (strict and ud.md5_expected =3D=3D None and ud.sha256_expecte=
d =3D=3D None):
> +            raise FetchError('No checksum specified for %s, please add a=
t least one to the recipe:\n'
> +                             'SRC_URI[%s] =3D "%s"\nSRC_URI[%s] =3D "%s"=
' %
> +                             (ud.localpath, ud.md5_name, md5data,
> +                              ud.sha256_name, sha256data), u)
> +
> +        # Log missing sums so user can more easily add them
> +        if ud.md5_expected =3D=3D None:
> +            logger.warn('Missing md5 SRC_URI checksum for %s, consider a=
dding to the recipe:\n'
> +                        'SRC_URI[%s] =3D "%s"',
> +                        ud.localpath, ud.md5_name, md5data)
> +
> +        if ud.sha256_expected =3D=3D None:
> +            logger.warn('Missing sha256 SRC_URI checksum for %s, conside=
r adding to the recipe:\n'
> +                        'SRC_URI[%s] =3D "%s"',
> +                        ud.localpath, ud.sha256_name, sha256data)
>
>      md5mismatch =3D False
>      sha256mismatch =3D False
> @@ -574,10 +575,14 @@ class FetchData(object):
>              self.sha256_name =3D "sha256sum"
>          if self.md5_name in self.parm:
>              self.md5_expected =3D self.parm[self.md5_name]
> +        elif self.type not in ["http", "https", "ftp", "ftps"]:
> +            self.md5_expected =3D None
>          else:
>              self.md5_expected =3D d.getVarFlag("SRC_URI", self.md5_name)
>          if self.sha256_name in self.parm:
>              self.sha256_expected =3D self.parm[self.sha256_name]
> +        elif self.type not in ["http", "https", "ftp", "ftps"]:
> +            self.sha256_expected =3D None
>          else:
>              self.sha256_expected =3D d.getVarFlag("SRC_URI", self.sha256=
_name)
>
> @@ -656,6 +661,19 @@ class FetchMethod(object):
>          """
>          return os.path.join(data.getVar("DL_DIR", d, True), urldata.loca=
lfile)
>
> +    def supports_checksum(self, urldata):
> +        """
> +        Is localpath something that can be represented by a checksum?
> +        """
> +        return True
> +
> +    def recommends_checksum(self, urldata):
> +        """
> +        Is the backend on where checksumming is recommended (should warn=
ings
> +        by displayed if there is no checksum)?
> +        """
> +        return False
> +
>      def _strip_leading_slashes(self, relpath):
>          """
>          Remove leading slash as os.path.join can't cope
> diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
> index 61fdc4b..8cea7dd 100644
> --- a/bitbake/lib/bb/fetch2/git.py
> +++ b/bitbake/lib/bb/fetch2/git.py
> @@ -82,6 +82,9 @@ class Git(FetchMethod):
>          """
>          return ud.type in ['git']
>
> +    def supports_checksum(self, urldata):
> +        return False
> +
>      def urldata_init(self, ud, d):
>          """
>          init git specific variable within url data
> diff --git a/bitbake/lib/bb/fetch2/ssh.py b/bitbake/lib/bb/fetch2/ssh.py
> index 91ac15f..8d6434a 100644
> --- a/bitbake/lib/bb/fetch2/ssh.py
> +++ b/bitbake/lib/bb/fetch2/ssh.py
> @@ -69,6 +69,9 @@ class SSH(FetchMethod):
>      def supports(self, url, urldata, d):
>          return __pattern__.match(url) !=3D None
>
> +    def supports_checksum(self, urldata):
> +        return False
> +
>      def localpath(self, url, urldata, d):
>          m =3D __pattern__.match(urldata.url)
>          path =3D m.group('path')
> diff --git a/bitbake/lib/bb/fetch2/wget.py b/bitbake/lib/bb/fetch2/wget.p=
y
> index d3be069..30a52fa 100644
> --- a/bitbake/lib/bb/fetch2/wget.py
> +++ b/bitbake/lib/bb/fetch2/wget.py
> @@ -45,6 +45,9 @@ class Wget(FetchMethod):
>          """
>          return ud.type in ['http', 'https', 'ftp']
>
> +    def recommends_checksum(self, urldata):
> +        return True
> +
>      def urldata_init(self, ud, d):
>
>          ud.basename =3D os.path.basename(ud.path)
> --
> 1.7.9.5
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky=


