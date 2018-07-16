.class public Lorg/yummysdk/lib/YMBillingInterface;
.super Ljava/lang/Object;
.source "YMBillingInterface.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "yummy"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native init(Landroid/app/Activity;Ljava/lang/String;ILorg/yummysdk/lib/YMBillingCallback;)I
.end method

.method public static native makePayment(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILorg/yummysdk/lib/YMBillingCallback;)I
.end method

.method public static native sinit(Landroid/content/Context;Ljava/lang/String;ILorg/yummysdk/lib/YMBillingCallback;)I
.end method
