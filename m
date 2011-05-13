Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 51F284C810BB
	for <poky@yoctoproject.org>; Fri, 13 May 2011 12:13:29 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 13 May 2011 10:13:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,365,1301900400"; d="scan'208";a="642367060"
Received: from unknown (HELO [10.7.199.58]) ([10.7.199.58])
	by orsmga002.jf.intel.com with ESMTP; 13 May 2011 10:13:28 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 13 May 2011 10:13:28 -0700
In-Reply-To: <767202df6b1d0044bd0b56bf4f50b8a69ceb18b5.1305269419.git.lei.mei@intel.com>
References: <cover.1305269419.git.lei.mei@intel.com>
	<767202df6b1d0044bd0b56bf4f50b8a69ceb18b5.1305269419.git.lei.mei@intel.com>
X-Mailer: Evolution 3.0.1 (3.0.1-1.fc15) 
Message-ID: <1305306808.2023.18.camel@scimitar>
Mime-Version: 1.0
Subject: Re: [PATCH 1/2] distro_check.py: Add a new function to reduce the repeat code
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
X-List-Received-Date: Fri, 13 May 2011 17:13:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-01-13 at 15:04 +0800, Mei Lei wrote:
> From: Mei Lei <lei.mei@intel.com>
> 
> A lot of repeat code in distrodata.bbclass when creating log file, we
> can define a function called create_log_file to do it.

I like the intent of the patch, some comments on coding style below.

> 
> Signed-off-by: Mei Lei <lei.mei@intel.com>
> ---
>  meta/lib/oe/distro_check.py |   15 +++++++++++++++
>  1 files changed, 15 insertions(+), 0 deletions(-)
> 
> diff --git a/meta/lib/oe/distro_check.py b/meta/lib/oe/distro_check.py
> index c85d4fb..134e92a 100644
> --- a/meta/lib/oe/distro_check.py
> +++ b/meta/lib/oe/distro_check.py
> @@ -341,6 +341,21 @@ def compare_in_distro_packages_list(distro_check_dir, d):
>      bb.note("Matching: %s" % matching_distros)
>      return matching_distros
>  
> +def create_log_file(d, logname):
> +    #logpath = bb.data.getVar('LOG_DIR', e.data, 1)

No need for this commented line.

> +    logpath = bb.data.getVar('LOG_DIR', d, 1)

We are trying to move towards using Boolean values where appropriate to
aid readability, this line should be:

logpath = bb.data.getVar('LOG_DIR', d, True)

> +    bb.utils.mkdirhier(logpath)
> +    logfile = logpath +"/" + logname.split(".")[0] + ".%s.csv" % bb.data.getVar('DATETIME', d, 1)

Can you use the Python standard library functions for handling filenames
here? And a boolean True in the getVar() call.

Something like the following feels more Pythonic:

logfn, logext = os.path.splitext(logname)
logfile = os.path.join(logpath, "%s.%s.csv" % (logfn,
bb.data.getVar('DATETIME', d, True))

> +    if not os.path.exists(logfile):
> +            slogfile = os.path.join(logpath, logname)
> +            if os.path.exists(slogfile):
> +                    os.remove(slogfile)
> +            os.system("touch %s" % logfile)
> +            os.symlink(logfile, slogfile)
> +            bb.data.setVar('LOG_FILE', logfile, d)
> +    return logfile
> +
> +
>  def save_distro_check_result(result, datetime, d):
>      pn = bb.data.getVar('PN', d, True)
>      logdir = bb.data.getVar('LOG_DIR', d, True)

-- 
Joshua Lock
        Yocto Build System Monkey
        Intel Open Source Technology Centre


