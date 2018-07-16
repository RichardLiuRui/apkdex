.class Lorg/cocos2dx/pay/QiPaPayHelper$1;
.super Ljava/lang/Object;
.source "QiPaPayHelper.java"

# interfaces
.implements Lorg/cocos2dx/pay/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/pay/QiPaPayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/pay/QiPaPayHelper;


# direct methods
.method constructor <init>(Lorg/cocos2dx/pay/QiPaPayHelper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/pay/QiPaPayHelper$1;->this$0:Lorg/cocos2dx/pay/QiPaPayHelper;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPayFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "priciePointId"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 53
    # getter for: Lorg/cocos2dx/pay/QiPaPayHelper;->mActivity:Landroid/app/Activity;
    invoke-static {}, Lorg/cocos2dx/pay/QiPaPayHelper;->access$0()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u652f\u4ed8\u5931\u8d25"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 54
    const/4 v0, -0x1

    invoke-static {v0}, Lorg/cocos2dx/pay/QiPaPayHelper;->runNativeCallback(I)V

    .line 56
    return-void
.end method

.method public onPaySuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "priciePointId"    # Ljava/lang/String;
    .param p2, "okCode"    # Ljava/lang/String;

    .prologue
    .line 45
    # getter for: Lorg/cocos2dx/pay/QiPaPayHelper;->mActivity:Landroid/app/Activity;
    invoke-static {}, Lorg/cocos2dx/pay/QiPaPayHelper;->access$0()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u652f\u4ed8\u6210\u529f"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 46
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/cocos2dx/pay/QiPaPayHelper;->runNativeCallback(I)V

    .line 49
    return-void
.end method
