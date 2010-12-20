Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0CDFC4C80BD8
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 08:46:50 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBKEm8gX026849; Mon, 20 Dec 2010 14:48:08 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id HGKwXVn4rK+3; Mon, 20 Dec 2010 14:48:08 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBKEm3kT026827
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 20 Dec 2010 14:48:04 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Lu Jingdong <jingdong.lu@windriver.com>
In-Reply-To: <1292466316.1852.4.camel@eric-desktop>
References: <1292466316.1852.4.camel@eric-desktop>
Date: Mon, 20 Dec 2010 14:46:20 +0000
Message-ID: <1292856380.25087.4476.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] ed: Change bin path
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
X-List-Received-Date: Mon, 20 Dec 2010 14:46:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-16 at 10:25 +0800, Lu Jingdong wrote:
> Subject: [PATCH 1/1] ed: Change bin path
> 
> LSB states that ed should be in /bin/ and change bin path of ed from
> usr/bin into bin for LSB.
> 
> Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
> ---
>  meta/recipes-extended/ed/ed_1.5.bb |    6 +++++-
>  1 files changed, 5 insertions(+), 1 deletions(-)

Merged into master, thanks. In future please ensure your email client
doesn't wrap lines in patches though.

Richard


