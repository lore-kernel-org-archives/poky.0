Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.web10.2365.1602176377522338553
 for <poky@lists.yoctoproject.org>;
 Thu, 08 Oct 2020 09:59:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@meraki.net header.s=google header.b=EmsXdyjU;
 spf=pass (domain: meraki.net, ip: 209.85.214.172, mailfrom: william.hauser@meraki.net)
Received: by mail-pl1-f172.google.com with SMTP id b19so3062447pld.0
        for <poky@lists.yoctoproject.org>; Thu, 08 Oct 2020 09:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=meraki.net; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=ycWhQE2is2I3PrST7rwOaRmNNxLlupr8gePwXqCD254=;
        b=EmsXdyjUZvniBA0AEqzn6rT/pwwafqhFL2YEyngf71xns/PU4UCoOqxTW4A8JomLGB
         eWJk+qkw1snAgNGltV56CkWXjnJ1DGyzIojeey9Sg/uGuu4A2GzZ5dMaHRcLfpsc6Vce
         zj5Jj84QWZrsQNOvNydS6Mj/Ulo9BvXoiPljs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ycWhQE2is2I3PrST7rwOaRmNNxLlupr8gePwXqCD254=;
        b=ulEAx5ELMtplARfLbVoRoxtCVCp6R9mcVcq13MBZ5dBWUjmkG6shPouvRyV99YM0F1
         GnUzAFNHEVRZJnTsu7eP9LE75+6NZr98Ebj3eFciFwlOY/09Ev4Z7uTLlVuSkQt334lJ
         CHqAaXLqRhSys/NYLopkZazWplwA+ym8qo6SEAjik3OOYw2Fy5Ff+pK6bzytgR8tzbxj
         wTyzSQBp6Ojm6OWPT+2jo3SKBAdTAi/cXH1uz40LBQUBSTkPkx8TBQuGOJq55ik3SYKm
         prabf7IWPD6lrw3w1QX9LjqSbtNa0cYGLCoR5sDWKJvB88LmwksYyUwBUbGa/nbbC/Ea
         s5pw==
X-Gm-Message-State: AOAM531JpIVYcDBg50l4IfPSM0CZ/sRlrX6mES5BzRElz1wL/3MuV5SJ
	DEH5UiumYdEyBuw0N53hG+MSSHglHTy/LA==
X-Google-Smtp-Source: ABdhPJy7MQZ3LfI7n99FgdehqKi4/CsnDIwENxewc13SoDIOqHMfSNLpUcc6cGTDbxW9+1ME7FVYnQ==
X-Received: by 2002:a17:902:8d86:b029:d1:9237:6dfd with SMTP id v6-20020a1709028d86b02900d192376dfdmr8301604plo.22.1602176376431;
        Thu, 08 Oct 2020 09:59:36 -0700 (PDT)
Return-Path: <william.hauser@meraki.net>
Received: from localhost.localdomain (192-195-83-200.static.monkeybrains.net. [192.195.83.200])
        by smtp.gmail.com with ESMTPSA id 17sm7445794pfi.55.2020.10.08.09.59.35
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2020 09:59:35 -0700 (PDT)
From: "William Hauser" <william.hauser@meraki.net>
X-Google-Original-From: William Hauser <whauser@meraki.com>
To: poky@lists.yoctoproject.org
Cc: William Hauser <william.hauser@meraki.com>
Subject: [PULL][PATCH 0/1] package.bbclass: fix image_debugfs symlinks
Date: Thu,  8 Oct 2020 09:59:25 -0700
Message-Id: <cover.1602083275.git.whauser@meraki.com>
X-Mailer: git-send-email 2.15.1

The debugfs does not contain any symlinks, causing gdb to be unable to locate
libraries whose minor versions are abstracted out by using symlinks.
i.e. executables link against libpcap.so/libpcap.so.1, not libpcap.so.1.9.1

This is a result a flawed fstat meant to stop broken symlinks from being copied
to the debugfs. My suggested change removes this fstat in favor of an earlier
check for broken symlinks that is already performed. More details in the commit
message.

This change was tested by examining libpcap's build artifacts.

debugfs/usr/lib/.debug/ contents before:
libpcap.so.1.9.1

debugfs/usr/lib/.debug/ contents after:
libpcap.so -> libpcap.so.1
libpcap.so.1 -> libpcap.so.1.9.1
libpcap.so.1.9.1

William Hauser (1):
  package.bbclass: fix image_debugfs symlinks

 meta/classes/package.bbclass | 8 --------
 1 file changed, 8 deletions(-)

-- 
2.15.1

