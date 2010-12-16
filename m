Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id CFE6F4C80FA8
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 09:31:38 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBGFWrme030189; Thu, 16 Dec 2010 15:32:53 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id jSMxMAIWAiVo; Thu, 16 Dec 2010 15:32:53 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBGFWjgQ030165
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 16 Dec 2010 15:32:47 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <d5a2ba1ee8fc7b9b491df15b9f84de8d47010e80.1292495814.git.paul.eggleton@linux.intel.com>
References: <d5a2ba1ee8fc7b9b491df15b9f84de8d47010e80.1292495814.git.paul.eggleton@linux.intel.com>
Date: Thu, 16 Dec 2010 15:31:17 +0000
Message-ID: <1292513477.26558.4011.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] openssl: restore -Wall flag
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
X-List-Received-Date: Thu, 16 Dec 2010 15:31:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-16 at 10:29 +0000, Paul Eggleton wrote:
> The -Wall flag was unintentionally removed from the end of the CFLAG var in
> 089612794d4d8d9c79bd2a4365d6df78371f7f40 by me. This patch puts it back in.
> 
> Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>

Merged into master, thanks.

Richard


