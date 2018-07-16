.class Lorg/cocos2dx/cpp/AppActivity$3;
.super Ljava/util/TimerTask;
.source "AppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/cpp/AppActivity;->staticpay(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/cpp/AppActivity;


# direct methods
.method constructor <init>(Lorg/cocos2dx/cpp/AppActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/cpp/AppActivity$3;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    .line 97
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity$3;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/cocos2dx/cpp/AppActivity;->doPurchase(I)V

    .line 101
    return-void
.end method
