.class public Lorg/cocos2dx/pay/PayConfig$MaiguangPay;
.super Ljava/lang/Object;
.source "PayConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/pay/PayConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MaiguangPay"
.end annotation


# static fields
.field public static final MAI_MSA:Ljava/lang/String; = ""

.field public static final dmPrice:[Ljava/lang/String;

.field public static final gid:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
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

    .line 62
    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v2, v0, v1

    .line 61
    sput-object v0, Lorg/cocos2dx/pay/PayConfig$MaiguangPay;->gid:[Ljava/lang/String;

    .line 64
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

    sput-object v0, Lorg/cocos2dx/pay/PayConfig$MaiguangPay;->dmPrice:[Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
