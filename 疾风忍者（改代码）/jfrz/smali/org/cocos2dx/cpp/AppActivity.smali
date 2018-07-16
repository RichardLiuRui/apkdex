.class public Lorg/cocos2dx/cpp/AppActivity;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "AppActivity.java"


# instance fields
.field private aweavibrator:Landroid/os/Vibrator;

.field private mkeyTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/cocos2dx/cpp/AppActivity;->mkeyTime:J

    .line 42
    return-void
.end method


# virtual methods
.method public enjoy(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 74
    new-instance v0, Lorg/cocos2dx/cpp/AppActivity$1;

    invoke-direct {v0, p0}, Lorg/cocos2dx/cpp/AppActivity$1;-><init>(Lorg/cocos2dx/cpp/AppActivity;)V

    .line 81
    .local v0, "task":Ljava/util/TimerTask;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 82
    .local v1, "timer":Ljava/util/Timer;
    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 83
    return-void
.end method

.method public jcallVibrator(I)V
    .locals 4
    .param p1, "time"    # I

    .prologue
    .line 62
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lorg/cocos2dx/cpp/AppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lorg/cocos2dx/cpp/AppActivity;->aweavibrator:Landroid/os/Vibrator;

    .line 63
    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity;->aweavibrator:Landroid/os/Vibrator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 65
    return-void
.end method

.method public jcallVibratorCancel(I)V
    .locals 1
    .param p1, "time"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity;->aweavibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 71
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    .line 100
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 105
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/cocos2dx/cpp/AppActivity;->mkeyTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/cocos2dx/cpp/AppActivity;->mkeyTime:J

    .line 110
    const-string v1, "\u518d\u6309\u4e00\u6b21\u9000\u51fa\u6e38\u620f"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 118
    :goto_0
    return v0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lorg/cocos2dx/cpp/AppActivity;->finish()V

    .line 114
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 118
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    .line 95
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    .line 89
    return-void
.end method
