.class Lorg/cocos2dx/cpp/AppActivity$1;
.super Ljava/util/TimerTask;
.source "AppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/cpp/AppActivity;->enjoy(I)V
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
    iput-object p1, p0, Lorg/cocos2dx/cpp/AppActivity$1;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    .line 64
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/lihcxk/utils/PlatformHelper;->akCallPay(I)V

    .line 71
    return-void
.end method
