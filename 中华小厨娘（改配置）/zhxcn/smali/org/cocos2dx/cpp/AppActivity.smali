.class public Lorg/cocos2dx/cpp/AppActivity;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "AppActivity.java"


# instance fields
.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public enjoy(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 64
    new-instance v0, Lorg/cocos2dx/cpp/AppActivity$1;

    invoke-direct {v0, p0}, Lorg/cocos2dx/cpp/AppActivity$1;-><init>(Lorg/cocos2dx/cpp/AppActivity;)V

    .line 74
    .local v0, "task":Ljava/util/TimerTask;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 76
    .local v1, "timer":Ljava/util/Timer;
    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 77
    return-void
.end method

.method public jcallVibrator(I)V
    .locals 3
    .param p1, "time"    # I

    .prologue
    .line 82
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lorg/cocos2dx/cpp/AppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lorg/cocos2dx/cpp/AppActivity;->vibrator:Landroid/os/Vibrator;

    .line 83
    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity;->vibrator:Landroid/os/Vibrator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 84
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "VibratorVibratorVibratorVibrator"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-static {p0}, Lcom/lihcxk/utils/PlatformHelper;->initPlatformHelper(Lorg/cocos2dx/cpp/AppActivity;)V

    .line 52
    invoke-static {}, Lcom/lihcxk/utils/PlatformHelper;->getInstance()Lcom/lihcxk/utils/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lihcxk/utils/PlatformHelper;->initPay(Lorg/cocos2dx/cpp/AppActivity;)V

    .line 54
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/dataeye/DCAgent;->setReportMode(I)V

    .line 58
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    .line 111
    invoke-static {}, Lcom/daily2fun/pay/union/PayInterFace;->onDestroy()V

    .line 112
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    .line 97
    invoke-static {p0}, Lcom/dataeye/DCAgent;->onPause(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    .line 91
    invoke-static {p0}, Lcom/dataeye/DCAgent;->onResume(Landroid/content/Context;)V

    .line 92
    return-void
.end method
