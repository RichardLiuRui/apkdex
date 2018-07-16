.class public Lorg/cocos2dx/pay/PayConfig$ZhongzhiPay;
.super Ljava/lang/Object;
.source "PayConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/pay/PayConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZhongzhiPay"
.end annotation


# static fields
.field public static final appid:Ljava/lang/String; = "1117"

.field public static final key:Ljava/lang/String; = ""

.field public static final money:[Ljava/lang/String;

.field public static final pointid:[Ljava/lang/String;

.field public static final userid:Ljava/lang/String; = "50022"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 111
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, ""

    aput-object v1, v0, v5

    const-string v1, ""

    aput-object v1, v0, v6

    const-string v1, ""

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v2, v0, v1

    sput-object v0, Lorg/cocos2dx/pay/PayConfig$ZhongzhiPay;->pointid:[Ljava/lang/String;

    .line 112
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "2000"

    aput-object v1, v0, v3

    const-string v1, "2000"

    aput-object v1, v0, v4

    const-string v1, "2000"

    aput-object v1, v0, v5

    const-string v1, "2000"

    aput-object v1, v0, v6

    const-string v1, "2000"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "2000"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "2000"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "2000"

    aput-object v2, v0, v1

    sput-object v0, Lorg/cocos2dx/pay/PayConfig$ZhongzhiPay;->money:[Ljava/lang/String;

    .line 107
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
