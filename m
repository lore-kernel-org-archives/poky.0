Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 66FAA4C80BD4
	for <poky@yoctoproject.org>; Sat, 20 Nov 2010 03:43:36 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 041CC1660657; Sat, 20 Nov 2010 02:43:34 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 713231660613;
	Sat, 20 Nov 2010 02:43:33 -0700 (MST)
Message-ID: <4CE79844.6020308@mlbassoc.com>
Date: Sat, 20 Nov 2010 02:43:32 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.12) Gecko/20101027 Fedora/3.1.6-1.fc13 Thunderbird/3.1.6
MIME-Version: 1.0
To: Mark Hatle <mark.hatle@windriver.com>
References: <4CE72325.1050806@windriver.com>
In-Reply-To: <4CE72325.1050806@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: Sourcing of poky-init-build-env from a non-bash shell...
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
X-List-Received-Date: Sat, 20 Nov 2010 09:43:36 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/19/2010 06:23 PM, Mark Hatle wrote:
> In recent days I've had a few people complain to me that the only way they can
> use Poky is to switch from their preferred shell to bash.  So I took it upon
> myself to attempt to address this issue.
>
> In poky-contrib, commit 479e626839e3c9beb789ec2919d5438930eb04cf, head of
> mhatle/initenv branch, is a patch that will allow the script to be sourced in
> any reasonable shell.
>
> I've attempted to test this with:
>    * bash
>    * dash
>    * ksh (ksh-93)
>    * zsh
>    * tcsh
>
> It should also work with csh and pdksh, but I don't have a local version to try it.
>
> If anyone using Poky regularly uses a non-bash shell, could you please try this
> and verify that things are working for you?
>
> For those of you who use the bash shell regularly, if you wouldn't mind trying
> it in your configurations I'd appreciate it.
>
> (I'm always looking for code reviews as well....)
>
> --Mark
>
> (Commit message follows)
>
> commit 479e626839e3c9beb789ec2919d5438930eb04cf
> Author: Mark Hatle<mark.hatle@windriver.com>
> Date:   Fri Nov 19 18:10:31 2010 -0600

Where can I find this?  It doesn't seem to be in the main Poky tree,
so I assume poky-contrib?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

