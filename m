Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web10.22295.1629110643611325654
 for <poky@lists.yoctoproject.org>;
 Mon, 16 Aug 2021 03:44:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=fulUf3XG;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: ptsneves@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id y34so33446865lfa.8
        for <poky@lists.yoctoproject.org>; Mon, 16 Aug 2021 03:44:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:message-id:date:user-agent:mime-version
         :content-transfer-encoding:content-language;
        bh=pcdYVIO3AZoLakP6gBH1ch3UdjIp3AGttn/RU7X12fo=;
        b=fulUf3XGGvL10FQP5T9ok7aznoth0Jc/I+Aj27X9aK8+BUdC9Orly0V6ZKqasEdRHy
         +ubRMUK9ieYkPkeBl33b6E75H6/o8gm1aZUJBqI2trfU/v27GldG29neH+6cMkCKLuiA
         9SzVOhw01c9VOrF8zC5EaZUvBBId59HB6EpkNzaxso2RoBM0qqFBUqk4u1O0dLaawTil
         e6rjqnETUg2r99f0oQWb0Mag1DZLKv4pjUhDDOpS2gHwM1r8Q8pZRWC0Km9BsuToUYlk
         QNL6YDacjMwIbsOt9wh+I7LoL0e98u1jxlvbz0G51huHQgBmXdk8VyttRoC08BMxtugw
         afdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:message-id:date:user-agent
         :mime-version:content-transfer-encoding:content-language;
        bh=pcdYVIO3AZoLakP6gBH1ch3UdjIp3AGttn/RU7X12fo=;
        b=UfS/ZGvcqSYYOVW+ZAnIiB/cq+hCsidaCG8qTfwqKsgbbfCGS54vw0dvtpBc8B3xxt
         fF92I9rvf5mymzITIWgnio8YqvPguyortaT6+ncgt+ArUldKk8KMmCjFxv2PNbBVavjP
         OO3GqcYEPWJemScj6HepnrmUyafRAx/mOy9z4CVLtWvo2d1+nnE6jZEnIZGOivDiMzIs
         jnXahcBhefKbs+t0BEBEUKtzya/zBGkoMGsqDWzlRUN/5E6MFXTVZ6r32tG5D2GrOjlK
         co/Z/aHwpONQHlPFPMy7bIpCYiVQC4PZ5a61YYjCiJoeQy05pako+tffn1HCXi7R3QRm
         ig4A==
X-Gm-Message-State: AOAM532NUU+hmRp4ugmMS8L2fRjroxo0AGDX8nOewh3u7agBG8YdWpC3
	/GIQLgul2JgM/s3I4FcZ0JeyPswRQADh
X-Google-Smtp-Source: ABdhPJwZwbRxt/B2u5fzO7PHbCLBnQ3fCKCinXRDMi8CjcGcmNJGm2yHi+SrN385FK5kNdwIHlhm2g==
X-Received: by 2002:a05:6512:22d0:: with SMTP id g16mr10950477lfu.176.1629110641656;
        Mon, 16 Aug 2021 03:44:01 -0700 (PDT)
Return-Path: <ptsneves@gmail.com>
Received: from [192.168.0.32] (77-92-34-4.cable-modem.tkk.net.pl. [77.92.34.4])
        by smtp.gmail.com with ESMTPSA id t18sm917205lfk.239.2021.08.16.03.44.01
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 03:44:01 -0700 (PDT)
From: "Paulo Neve" <ptsneves@gmail.com>
Subject: $(( causes parsing error NotImplementedError
To: poky@lists.yoctoproject.org
Message-ID: <49811e42-9313-0f3a-2d0f-486bd5d64baa@gmail.com>
Date: Mon, 16 Aug 2021 12:44:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hello all, hopefully the following issue is related to this mailing list.

I recently noticed that the expression $(( causes a parsing error on 
shell-like functions. The $(( or arithmetic expansion, is a POSIX 
standard expression but it causes issues on the parser even before it is 
runs in sh. Is this expected, or documented anywhere?

Thank you for your time. The abbreviated error is below (sorry for the 
formatting)

  Error during parse shell code, the last 5 lines are:
     echo $((1 +2 ))


ERROR: Unable to parse /example.bb
Traceback (most recent call last):
   File "/meta/poky/bitbake/lib/bb/pysh/pyshlex.py", line 600, in 
PLYLexer._parse(eof=True):
                  elif self._state==self.ST_QUOTED:
     >                self._parse_quoted(eof)
                  elif self._state==self.ST_HEREDOC:
   File "/meta/poky/bitbake/lib/bb/pysh/pyshlex.py", line 688, in 
PLYLexer._parse_quoted(eof=True):

     >        wtree, remaining = self._wordlexer.add(input, eof)
              self._wordlexer = None
   File "//poky/bitbake/lib/bb/pysh/pyshlex.py", line 146, in 
WordLexer.add(data=['$', '(', '(', '1', ' ', '+', '2', ' ', ')', ')', 
'\n'], eof=True):
              self._buffer += list(data)
     >        self._parse(eof)

   File "/meta/poky/bitbake/lib/bb/pysh/pyshlex.py", line 324, in 
WordLexer._parse(eof=True):

     >            read, closed = parsefunc(buf, result, eof)

   File "/meta/poky/bitbake/lib/bb/pysh/pyshlex.py", line 290, in 
WordLexer._parse_dollar(buf=['1', ' ', '+', '2', ' ', ')', ')', '\n'], 
result=['$((', ''], eof=True):
              else:
     >            raise NotImplementedError(sep)

NotImplementedError: $((

