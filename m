Return-Path: <bastien.jauny@gmail.com>
Received: from mail-ee0-f53.google.com (mail-ee0-f53.google.com [74.125.83.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5A05E0178C
	for <poky@yoctoproject.org>; Wed, 13 Nov 2013 11:21:17 -0800 (PST)
Received: by mail-ee0-f53.google.com with SMTP id b57so391630eek.12
	for <poky@yoctoproject.org>; Wed, 13 Nov 2013 11:21:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:subject:from:to:date:content-type:mime-version
	:content-transfer-encoding;
	bh=ibKXBg/jgW5DuXrjnpirQ/BgJfF5LvJF3RHncY9L9s8=;
	b=BWtpkH/OT/e27h29xvaL5LZFSBwDeweDJOVVMRxPDPIOyjINoq8yRjymZBTLwOZExh
	PjQJiQWavqysyv71RXyNhGMHI1JG5lNLRtQxmPWcpwoyaxTdJBEvMW1pY+h/xDE5UyWn
	VEwqkwRF7A6rYruu9+585oskXoLnb62XLw+3/KKuAb5wPZHTBXuXleKS57nxblTa3zpg
	J91HHMpkbVLWQiK2yZSUi/LRgIDrxNPtjJ++hWkWFDxwIEBZ/2DuNIzz5rwg8PJUTmcZ
	6z2PXqK94cvdCEi+q09xfPR/xG+seCcogXL7zq6goqygIG8vUavKhHx6jxOnyumTuU5T
	p0kw==
X-Received: by 10.14.122.132 with SMTP id t4mr51138969eeh.20.1384370476973;
	Wed, 13 Nov 2013 11:21:16 -0800 (PST)
Received: from [192.168.0.11] (85-171-63-10.rev.numericable.fr. [85.171.63.10])
	by mx.google.com with ESMTPSA id m54sm82704767eex.2.2013.11.13.11.21.16
	for <poky@yoctoproject.org>
	(version=SSLv3 cipher=RC4-SHA bits=128/128);
	Wed, 13 Nov 2013 11:21:16 -0800 (PST)
Message-ID: <1384370474.4683.8.camel@rivendell>
From: Bastien JAUNY <bastien.jauny@gmail.com>
To: poky@yoctoproject.org
Date: Wed, 13 Nov 2013 20:21:14 +0100
X-Mailer: Evolution 3.4.4-3 
Mime-Version: 1.0
Subject: [patch] yocto-bsp: Add missing format specifier in bblayers error message
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 13 Nov 2013 19:21:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

If the build environment is misconfigured (e.g. a bad path
for a layer in bblayers.conf) the yocto-bsp script crashes with a
standard python error, not very explicit.  This fixes the problem.

 Signed-off-by: Bastien JAUNY <bastien.jauny@gmail.com>

---
 scripts/lib/bsp/kernel.py |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/lib/bsp/kernel.py b/scripts/lib/bsp/kernel.py
index 5696ca7..ba68b60 100644
--- a/scripts/lib/bsp/kernel.py
+++ b/scripts/lib/bsp/kernel.py
@@ -62,7 +62,7 @@ def find_bblayers():
             break
 
     if not bblayers:
-        print "Couldn't find BBLAYERS in 'bitbake -e' output, exiting."
% \
+        print "Couldn't find BBLAYERS in %s output, exiting." % \
             bitbake_env_cmd
         sys.exit(1)
 
-- 
1.7.10.4




