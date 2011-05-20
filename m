Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id EA0564C80052
	for <poky@yoctoproject.org>; Fri, 20 May 2011 14:37:40 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 20 May 2011 12:37:40 -0700
X-ExtLoop1: 1
Received: from unknown (HELO [10.255.12.39]) ([10.255.12.39])
	by orsmga002.jf.intel.com with ESMTP; 20 May 2011 12:37:40 -0700
Message-ID: <4DD6C303.103@linux.intel.com>
Date: Fri, 20 May 2011 12:37:39 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Xiaofeng Yan <xiaofeng.yan@windriver.com>
References: <cover.1305884138.git.xiaofeng.yan@windriver.com>
	<7bb24bd1f62621d86f131f0babf0117d6dcd49d4.1305884138.git.xiaofeng.yan@windriver.com>
In-Reply-To: <7bb24bd1f62621d86f131f0babf0117d6dcd49d4.1305884138.git.xiaofeng.yan@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] [YOCTO #1090]: Fix bugs
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
X-List-Received-Date: Fri, 20 May 2011 19:37:41 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/20/2011 02:39 AM, Xiaofeng Yan wrote:
> From: Xiaofeng Yan<xiaofeng.yan@windriver.com>
>
The subject of this patch is not in the correct format.

It should be <filename>: short description

task-core-lsb: changed RDEPENDS to use _append_<machinename>

And then in the commit message you need to mention the bugid:

[YOCTO #1090]

Please resend this, also see my comments with Mark's in the other OpenGL 
email.

Sau!

> Modify task-core-lsb.bb to solve the problem graphic library can't be installed into lsb image
>
> Signed-off-by: Xiaofeng Yan<xiaofeng.yan@windriver.com>
> ---
>   meta/recipes-extended/tasks/task-core-lsb.bb |   10 +++++-----
>   1 files changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/meta/recipes-extended/tasks/task-core-lsb.bb b/meta/recipes-extended/tasks/task-core-lsb.bb
> index b6c5ae5..59ba051 100644
> --- a/meta/recipes-extended/tasks/task-core-lsb.bb
> +++ b/meta/recipes-extended/tasks/task-core-lsb.bb
> @@ -170,20 +170,20 @@ RDEPENDS_task-core-lsb-graphic-add = "\
>       liberation-fonts \
>   "
>
> -RDEPENDS_task-core-lsb-graphic-add_qemux86 = "\
> +RDEPENDS_task-core-lsb-graphic-add_append_qemux86 = "\
>       libqtopengl4 \
>   "
> -RDEPENDS_task-core-lsb-graphic-add_atom-pc = "\
> +RDEPENDS_task-core-lsb-graphic-add_append_atom-pc = "\
>       libqtopengl4 \
>   "
> -RDEPENDS_task-core-lsb-graphic-add_qemuppc = "\
> +RDEPENDS_task-core-lsb-graphic-add_append_qemuppc = "\
>       libqtopengl4 \
>   "
> -RDEPENDS_task-core-lsb-graphic-add_emenlow = "\
> +RDEPENDS_task-core-lsb-graphic-add_append_emenlow = "\
>       libqtopengl4 \
>   "
>
> -RDEPENDS_task-core-lsb-graphic-add_mpc8315e-rdb = "\
> +RDEPENDS_task-core-lsb-graphic-add_append_mpc8315e-rdb = "\
>       libqtopengl4 \
>   "
>


