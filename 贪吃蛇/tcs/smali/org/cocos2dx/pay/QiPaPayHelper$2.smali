.class Lorg/cocos2dx/pay/QiPaPayHelper$2;
.super Ljava/lang/Object;
.source "QiPaPayHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/pay/QiPaPayHelper;->runNativeCallback(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$result:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lorg/cocos2dx/pay/QiPaPayHelper$2;->val$result:I

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper$2;->val$result:I

    invoke-static {v0}, Lcom/allknowboy/utils/PlatformHelper;->callCPP(I)V

    .line 232
    return-void
.end method
