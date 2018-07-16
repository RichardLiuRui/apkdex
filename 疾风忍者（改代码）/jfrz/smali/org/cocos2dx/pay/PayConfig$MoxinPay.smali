.class public Lorg/cocos2dx/pay/PayConfig$MoxinPay;
.super Ljava/lang/Object;
.source "PayConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/pay/PayConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoxinPay"
.end annotation


# static fields
.field public static final moAppid:Ljava/lang/String; = ""

.field public static final moCpparam:Ljava/lang/String; = ""

.field public static final moPayCode:[I

.field public static final payName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 89
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/cocos2dx/pay/PayConfig$MoxinPay;->moPayCode:[I

    .line 90
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v2, v0, v1

    sput-object v0, Lorg/cocos2dx/pay/PayConfig$MoxinPay;->payName:[Ljava/lang/String;

    .line 87
    return-void

    .line 89
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
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
