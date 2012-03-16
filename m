Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B4A3E013AC
	for <poky@yoctoproject.org>; Fri, 16 Mar 2012 16:45:19 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2GNjGl7009956;
	Fri, 16 Mar 2012 23:45:16 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 09710-01; Fri, 16 Mar 2012 23:45:12 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2GNj9JG009950
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 16 Mar 2012 23:45:10 GMT
Message-ID: <1331941509.18586.212.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
Date: Fri, 16 Mar 2012 23:45:09 +0000
In-Reply-To: <1331926234-1685-1-git-send-email-gary@mlbassoc.com>
References: <1331926234-1685-1-git-send-email-gary@mlbassoc.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] bitbake/fetch2: Fix typo which broke use of tarballs
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
X-List-Received-Date: Fri, 16 Mar 2012 23:45:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-03-16 at 13:30 -0600, Gary Thomas wrote:
> Signed-off-by: Gary Thomas <gary@mlbassoc.com>
> ---
>  bitbake/lib/bb/fetch2/__init__.py |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
> index 6847873..7524fa9 100644
> --- a/bitbake/lib/bb/fetch2/__init__.py
> +++ b/bitbake/lib/bb/fetch2/__init__.py
> @@ -192,7 +192,7 @@ def uri_replace(ud, uri_find, uri_replace, d):
>                  if uri_find_decoded.index(i) == 2:
>                      basename = None
>                      if ud.mirrortarball:
> -                        basename = os.path.basename(ud.localpath)
> +                        basename = os.path.basename(ud.mirrortarball)
>                      elif ud.localpath:
>                          basename = os.path.basename(ud.localpath)
>                      if basename and result_decoded[loc].endswith("/"):

Should really go to the bitbake-devel list but merged to master since
its a needed fix, thanks.

Cheers,

Richard


