.class public Lcom/zp/rp/auth/Auth;
.super Ljava/lang/Object;
.source "Auth.java"


# instance fields
.field private final password:Ljava/lang/String;

.field private final result:Lcom/zp/rp/auth/AuthResult;

.field private final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/zp/rp/auth/AuthResult;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/zp/rp/auth/AuthResult;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/zp/rp/auth/Auth;->username:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/zp/rp/auth/Auth;->password:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/zp/rp/auth/Auth;->result:Lcom/zp/rp/auth/AuthResult;

    .line 21
    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zp/rp/auth/Auth;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Lcom/zp/rp/auth/AuthResult;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zp/rp/auth/Auth;->result:Lcom/zp/rp/auth/AuthResult;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zp/rp/auth/Auth;->username:Ljava/lang/String;

    return-object v0
.end method
