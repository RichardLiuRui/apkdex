.class public Lorg/cocos2dx/pay/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "D2F"

.field public static isDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x1

    sput-boolean v0, Lorg/cocos2dx/pay/Log;->isDebug:Z

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 15
    sget-boolean v0, Lorg/cocos2dx/pay/Log;->isDebug:Z

    if-eqz v0, :cond_0

    .line 16
    const-string v0, "D2F"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 36
    sget-boolean v0, Lorg/cocos2dx/pay/Log;->isDebug:Z

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "D2F"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 22
    sget-boolean v0, Lorg/cocos2dx/pay/Log;->isDebug:Z

    if-eqz v0, :cond_0

    .line 23
    const-string v0, "D2F"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 9
    sget-boolean v0, Lorg/cocos2dx/pay/Log;->isDebug:Z

    if-eqz v0, :cond_0

    .line 10
    const-string v0, "D2F"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 29
    sget-boolean v0, Lorg/cocos2dx/pay/Log;->isDebug:Z

    if-eqz v0, :cond_0

    .line 30
    const-string v0, "D2F"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    return-void
.end method
