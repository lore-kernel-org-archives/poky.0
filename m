Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id A1F7D4C80050
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 08:45:01 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBKEjwLf026697; Mon, 20 Dec 2010 14:45:58 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id kp+9hekCIj31; Mon, 20 Dec 2010 14:45:58 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBKEjsXD026693
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 20 Dec 2010 14:45:56 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Scott Rifenbark <scott.m.rifenbark@intel.com>
In-Reply-To: <df55c574e165951fcd95df1471a658576681be81.1292534378.git.scott.m.rifenbark@intel.com>
References: <cover.1292534378.git.scott.m.rifenbark@intel.com>
	<df55c574e165951fcd95df1471a658576681be81.1292534378.git.scott.m.rifenbark@intel.com>
Date: Mon, 20 Dec 2010 14:44:12 +0000
Message-ID: <1292856252.25087.4468.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] documentation/yocto-project-qs/yocto-project-qs.xml: Fixed grammar problem
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
X-List-Received-Date: Mon, 20 Dec 2010 14:45:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-12-15 at 15:05 -0800, Scott Rifenbark wrote:
> Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
> ---
>  .../yocto-project-qs/yocto-project-qs.xml          |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/documentation/yocto-project-qs/yocto-project-qs.xml
> index 6575469..1c45cde 100644
> --- a/documentation/yocto-project-qs/yocto-project-qs.xml
> +++ b/documentation/yocto-project-qs/yocto-project-qs.xml
> @@ -269,7 +269,7 @@
>       $ poky-qemu qemux86
>               </literallayout>
>               The build process could take several hours the first time you run it. 
> -             Depending on the number of processor and cores, the amount or RAM, the speed of your
> +             Depending on the number of processors and cores, the amount or RAM, the speed of your
>               internet connection and other factors.
>               After the initial build, subsequent builds run much faster.
>           </para>

Merged into master, thanks.

Richard


