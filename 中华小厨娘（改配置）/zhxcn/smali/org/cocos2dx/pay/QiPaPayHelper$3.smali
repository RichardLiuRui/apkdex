.class Lorg/cocos2dx/pay/QiPaPayHelper$3;
.super Ljava/lang/Object;
.source "QiPaPayHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/pay/QiPaPayHelper;->callmohuqingxi(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callId:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lorg/cocos2dx/pay/QiPaPayHelper$3;->val$callId:I

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper$3;->val$callId:I

    invoke-static {v0}, Lorg/cocos2dx/pay/QiPaPayHelper;->callMohuQx(I)V

    .line 361
    return-void
.end method
