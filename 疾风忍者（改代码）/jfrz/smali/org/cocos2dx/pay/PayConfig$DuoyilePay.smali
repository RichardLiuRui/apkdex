.class public Lorg/cocos2dx/pay/PayConfig$DuoyilePay;
.super Ljava/lang/Object;
.source "PayConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/pay/PayConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DuoyilePay"
.end annotation


# static fields
.field public static final appid:I = 0x5b8df5

.field public static final feeId:[Ljava/lang/String;

.field public static final price:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 123
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/cocos2dx/pay/PayConfig$DuoyilePay;->price:[I

    .line 125
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0201"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "0202"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "0203"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "0204"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "0205"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "0206"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "0207"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "0208"

    aput-object v2, v0, v1

    sput-object v0, Lorg/cocos2dx/pay/PayConfig$DuoyilePay;->feeId:[Ljava/lang/String;

    .line 121
    return-void

    .line 123
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
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
