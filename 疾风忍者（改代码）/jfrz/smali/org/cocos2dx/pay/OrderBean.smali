.class public Lorg/cocos2dx/pay/OrderBean;
.super Ljava/lang/Object;
.source "OrderBean.java"


# instance fields
.field public activity:Landroid/app/Activity;

.field public callBack:Lorg/cocos2dx/pay/ResultCallback;

.field public payIndex:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILorg/cocos2dx/pay/ResultCallback;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "payIndex"    # I
    .param p3, "callBack"    # Lorg/cocos2dx/pay/ResultCallback;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/cocos2dx/pay/OrderBean;->activity:Landroid/app/Activity;

    .line 13
    iput p2, p0, Lorg/cocos2dx/pay/OrderBean;->payIndex:I

    .line 14
    iput-object p3, p0, Lorg/cocos2dx/pay/OrderBean;->callBack:Lorg/cocos2dx/pay/ResultCallback;

    .line 15
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lorg/cocos2dx/pay/OrderBean;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getCallBack()Lorg/cocos2dx/pay/ResultCallback;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/cocos2dx/pay/OrderBean;->callBack:Lorg/cocos2dx/pay/ResultCallback;

    return-object v0
.end method

.method public getPayIndex()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lorg/cocos2dx/pay/OrderBean;->payIndex:I

    return v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 20
    iput-object p1, p0, Lorg/cocos2dx/pay/OrderBean;->activity:Landroid/app/Activity;

    .line 21
    return-void
.end method

.method public setCallBack(Lorg/cocos2dx/pay/ResultCallback;)V
    .locals 0
    .param p1, "callBack"    # Lorg/cocos2dx/pay/ResultCallback;

    .prologue
    .line 35
    iput-object p1, p0, Lorg/cocos2dx/pay/OrderBean;->callBack:Lorg/cocos2dx/pay/ResultCallback;

    .line 36
    return-void
.end method

.method public setPayIndex(I)V
    .locals 0
    .param p1, "payIndex"    # I

    .prologue
    .line 27
    iput p1, p0, Lorg/cocos2dx/pay/OrderBean;->payIndex:I

    .line 28
    return-void
.end method
