Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id D543E4C80052
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 06:21:07 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 399701660818; Thu,  2 Dec 2010 05:21:07 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 8A1E716607BE;
	Thu,  2 Dec 2010 05:21:06 -0700 (MST)
Message-ID: <4CF78F32.4030700@mlbassoc.com>
Date: Thu, 02 Dec 2010 05:21:06 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.9) Gecko/20100430 Fedora/3.0.4-2.fc11 Thunderbird/3.0.4
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1291135878.git.paul.eggleton@linux.intel.com>
	<cc23b209094288c749968a2933959c097ae2d3e6.1291135878.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cc23b209094288c749968a2933959c097ae2d3e6.1291135878.git.paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] sanity.bbclass: add check for creation of long	filenames
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
X-List-Received-Date: Thu, 02 Dec 2010 12:21:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/30/2010 09:40 AM, Paul Eggleton wrote:
> Detect and fail if filesystem in use for TMPDIR or SSTATE_DIR has an
> unreasonably short file name length limit (eg. eCryptFS). This can cause
> "file name too long" errors during poky builds (e.g. when writing sstate
> files for packages with a git revision as the version).

Is this information cached?  It's seems quite the burden
to have to create/remove ~400 files each time on startup.

> Signed-off-by: Paul Eggleton<paul.eggleton@linux.intel.com>
> ---
>   meta/classes/sanity.bbclass |   33 ++++++++++++++++++++++++++++++++-
>   1 files changed, 32 insertions(+), 1 deletions(-)
>
> diff --git a/meta/classes/sanity.bbclass b/meta/classes/sanity.bbclass
> index 06aeddc..90e8911 100644
> --- a/meta/classes/sanity.bbclass
> +++ b/meta/classes/sanity.bbclass
> @@ -21,6 +21,21 @@ def check_conf_exists(fn, data):
>   			return True
>   	return False
>
> +def check_create_long_filename(filepath, pathname):
> +	testfile = os.path.join(filepath, ''.join([`num`[-1] for num in xrange(1,200)]))
> +	try:
> +		if not os.path.exists(filepath):
> +			os.path.mkdir(filepath)
> +		f = file(testfile, "w")
> +		f.close()
> +		os.remove(testfile)
> +	except IOError as (errno, strerror):
> +		if errno == 36: # ENAMETOOLONG
> +			return "Failed to create a file with a long name in {0}. Please use a filesystem that does not unreasonably limit filename length.\n".format(pathname)
> +		else:
> +			return "Failed to create a file in {0}: {1}".format(pathname, strerror)
> +	return ""
> +
>   def check_sanity(e):
>   	from bb import note, error, data, __version__
>
> @@ -163,10 +178,26 @@ def check_sanity(e):
>   		if os.path.exists('%s/libc.so.6' % lib32path) and not os.path.exists('/usr/include/gnu/stubs-32.h'):
>   			messages = messages + "You have a 32-bit libc, but no 32-bit headers.  You must install the 32-bit libc headers.\n"
>
> +	tmpdir = data.getVar('TMPDIR', e.data, True)
> +
> +	#
> +	# Check that TMPDIR isn't on a filesystem with limited filename length (eg. eCryptFS)
> +	#
> +	testmsg = check_create_long_filename(tmpdir, "TMPDIR")
> +	if testmsg != "":
> +		messages = messages + testmsg
> +	#
> +	# Check that SSTATE_DIR isn't on a filesystem with limited filename length (eg. eCryptFS)
> +	#
> +	sstatedir = data.getVar('SSTATE_DIR', e.data, True)
> +	if sstatedir != "":
> +		testmsg = check_create_long_filename(sstatedir, "SSTATE_DIR")
> +		if testmsg != "":
> +			messages = messages + testmsg
> +
>   	#
>   	# Check that TMPDIR hasn't changed location since the last time we were run
>   	#
> -	tmpdir = data.getVar('TMPDIR', e.data, True)
>   	checkfile = os.path.join(tmpdir, "saved_tmpdir")
>   	if os.path.exists(checkfile):
>   		f = file(checkfile, "r")

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

