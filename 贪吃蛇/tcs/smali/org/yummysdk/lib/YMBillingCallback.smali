.class public abstract Lorg/yummysdk/lib/YMBillingCallback;
.super Ljava/lang/Object;
.source "YMBillingCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onCancel(Ljava/lang/String;)V
.end method

.method public abstract onFail(Ljava/lang/String;I)V
.end method

.method public abstract onInitFail(Ljava/lang/String;I)V
.end method

.method public abstract onInitSuccess(Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Ljava/lang/String;)V
.end method
