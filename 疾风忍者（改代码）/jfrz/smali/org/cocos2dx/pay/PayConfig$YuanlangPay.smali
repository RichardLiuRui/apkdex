.class public Lorg/cocos2dx/pay/PayConfig$YuanlangPay;
.super Ljava/lang/Object;
.source "PayConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/pay/PayConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YuanlangPay"
.end annotation


# static fields
.field public static final appid:Ljava/lang/String; = "AP12300517191037130001"

.field public static final goods_id:[Ljava/lang/String;

.field public static final goods_name:[Ljava/lang/String;

.field public static final goods_price:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 136
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "P170510ELC7"

    aput-object v1, v0, v4

    const-string v1, "P1705104678"

    aput-object v1, v0, v5

    const-string v1, "P170510AEY9"

    aput-object v1, v0, v6

    const-string v1, "P1705100ER0"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "P1705108ZO1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "P170510ZD02"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "P170510BLU3"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "P1705103MS4"

    aput-object v2, v0, v1

    sput-object v0, Lorg/cocos2dx/pay/PayConfig$YuanlangPay;->goods_id:[Ljava/lang/String;

    .line 137
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "\u89e3\u9501\u7f8e\u5973"

    aput-object v1, v0, v4

    const-string v1, "\u7fbd\u6bdb\u9053\u5177\u8d2d\u4e70"

    aput-object v1, v0, v5

    const-string v1, "\u9999\u8549\u9053\u5177\u8d2d\u4e70"

    aput-object v1, v0, v6

    const-string v1, "\u9707\u52a8\u68d2\u9053\u5177\u8d2d\u4e70"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u76ae\u97ad\u9053\u5177\u8d2d\u4e70"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u65f6\u95f4\u793c\u5305"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u7231\u5fc3\u793c\u5305"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u9000\u51fa\u5927\u793c\u5305"

    aput-object v2, v0, v1

    sput-object v0, Lorg/cocos2dx/pay/PayConfig$YuanlangPay;->goods_name:[Ljava/lang/String;

    .line 138
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/cocos2dx/pay/PayConfig$YuanlangPay;->goods_price:[I

    .line 134
    return-void

    .line 138
    :array_0
    .array-data 4
        0x3e8
        0x3e8
        0x3e8
        0x3e8
        0x3e8
        0x3e8
        0x3e8
        0x3e8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
