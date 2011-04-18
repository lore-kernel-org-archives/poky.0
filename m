Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7DF724C80A47
	for <poky@yoctoproject.org>; Mon, 18 Apr 2011 03:41:20 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p3I8fHRj010273;
	Mon, 18 Apr 2011 09:41:17 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 10049-06; Mon, 18 Apr 2011 09:41:14 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p3I8fBAa010267
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 18 Apr 2011 09:41:11 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <f558e569b2182b81bba0a9a08bbba5713489e1b1.1302653512.git.dvhart@linux.intel.com>
References: <f558e569b2182b81bba0a9a08bbba5713489e1b1.1302653512.git.dvhart@linux.intel.com>
Date: Mon, 18 Apr 2011 09:41:03 +0100
Message-ID: <1303116063.5518.75.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] bitbake: correct typo in ??= documentation
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
X-List-Received-Date: Mon, 18 Apr 2011 08:41:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-04-12 at 17:11 -0700, Darren Hart wrote:
> ??= is a lazy version of ?=
> 
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> ---
>  bitbake/doc/manual/usermanual.xml |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/bitbake/doc/manual/usermanual.xml b/bitbake/doc/manual/usermanual.xml
> index 32b40ee..d5be5f3 100644
> --- a/bitbake/doc/manual/usermanual.xml
> +++ b/bitbake/doc/manual/usermanual.xml
> @@ -97,7 +97,7 @@ share common metadata between many packages.</para></listitem>
>                  <title>Setting a default value (??=)</title>
>                  <para><screen><varname>A</varname> ??= "somevalue"</screen></para>
>                  <para><screen><varname>A</varname> ??= "someothervalue"</screen></para>
> -                <para>If <varname>A</varname> is set before the above, it will retain that value.  If <varname>A</varname> is unset prior to the above, <varname>A</varname> will be set to <literal>someothervalue</literal>.  This is a lazy version of ??=, in that the assignment does not occur until the end of the parsing process, so that the last, rather than the first, ??= assignment to a given variable will be used.</para>
> +                <para>If <varname>A</varname> is set before the above, it will retain that value.  If <varname>A</varname> is unset prior to the above, <varname>A</varname> will be set to <literal>someothervalue</literal>.  This is a lazy version of ?=, in that the assignment does not occur until the end of the parsing process, so that the last, rather than the first, ??= assignment to a given variable will be used.</para>
>              </section>
>              <section>
>                  <title>Immediate variable expansion (:=)</title>

Merged into poky master (and will follow into bitbake master), thanks.

Richard


