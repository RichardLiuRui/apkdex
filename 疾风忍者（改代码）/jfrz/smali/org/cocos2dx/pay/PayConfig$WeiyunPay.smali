.class public Lorg/cocos2dx/pay/PayConfig$WeiyunPay;
.super Ljava/lang/Object;
.source "PayConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/pay/PayConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeiyunPay"
.end annotation


# static fields
.field public static final appCode:Ljava/lang/String; = "20693711"

.field public static final feeCode:I = 0x42ea308

.field public static final price:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/cocos2dx/pay/PayConfig$WeiyunPay;->price:[I

    .line 145
    return-void

    .line 149
    :array_0
    .array-data 4
        0x7d0
        0x7d0
        0x7d0
        0x7d0
        0x7d0
        0x7d0
        0x7d0
        0x7d0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
