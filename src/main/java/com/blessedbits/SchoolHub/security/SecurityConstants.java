package com.blessedbits.SchoolHub.security;

import io.jsonwebtoken.security.Keys;

import java.security.Key;

public class SecurityConstants {
    public static final long JWT_TOKEN_VALIDITY = 86400;
    public static final String JWT_SECRET = "5pcGFBfkSBNpFrtgPNAl3FzpGygSwdDaLtwUQWPt";
    public static final Key SIGNING_KEY = Keys.hmacShaKeyFor(JWT_SECRET.getBytes());
}
