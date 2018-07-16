.class public Lorg/cocos2dx/cpp/AppActivity;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "AppActivity.java"


# static fields
.field public static STATIC_APPACTIVITY:Lorg/cocos2dx/cpp/AppActivity;

.field static _payId:I

.field static payIdList:[Ljava/lang/String;

.field static priceList:[I

.field static priceNameList:[Ljava/lang/String;

.field static productNameList:[Ljava/lang/String;


# instance fields
.field private final DC_ID:Ljava/lang/String;

.field public _channelId:Ljava/lang/String;

.field public ankouTimes:I

.field private appHandler:Landroid/os/Handler;

.field private mkeyTime:J

.field public myHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0xe

    const/4 v3, 0x0

    .line 57
    sput v3, Lorg/cocos2dx/cpp/AppActivity;->_payId:I

    .line 61
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v3

    const-string v1, "2"

    aput-object v1, v0, v5

    const-string v1, "3"

    aput-object v1, v0, v6

    const-string v1, "4"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 62
    const-string v2, "12"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "13"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "14"

    aput-object v2, v0, v1

    .line 61
    sput-object v0, Lorg/cocos2dx/cpp/AppActivity;->payIdList:[Ljava/lang/String;

    .line 64
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/cocos2dx/cpp/AppActivity;->priceList:[I

    .line 67
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "\u571f\u8c6a\u5957\u88c5"

    aput-object v1, v0, v3

    const-string v1, "\u8db3\u7403\u660e\u661f"

    aput-object v1, v0, v5

    const-string v1, "\u5723\u8bde\u5feb\u4e50\uff01"

    aput-object v1, v0, v6

    const-string v1, "\u9ed1\u8863\u4eba"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u53cc\u624b\u6a21\u5f0f"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u53cc\u500d\u91d1\u5e01"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u840c\u5ba0\u5927\u4f5c\u62181"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u840c\u5ba0\u5927\u4f5c\u62182"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 68
    const-string v2, "\u840c\u5ba0\u5927\u4f5c\u62183"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u91d1\u5e01\u98ce\u66b4"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "500\u91d1\u5e01"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "1000\u91d1\u5e01"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "3000\u91d1\u5e01"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u706b\u7bad"

    aput-object v2, v0, v1

    .line 67
    sput-object v0, Lorg/cocos2dx/cpp/AppActivity;->productNameList:[Ljava/lang/String;

    .line 70
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "0107"

    aput-object v1, v0, v3

    const-string v1, "0108"

    aput-object v1, v0, v5

    const-string v1, "0109"

    aput-object v1, v0, v6

    const-string v1, "010A"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "010B"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "010C"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "010D"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "010E"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 71
    const-string v2, "010F"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "010G"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "010H"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "010I"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "010J"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "010K"

    aput-object v2, v0, v1

    .line 70
    sput-object v0, Lorg/cocos2dx/cpp/AppActivity;->priceNameList:[Ljava/lang/String;

    .line 71
    return-void

    .line 64
    :array_0
    .array-data 4
        0x3e8
        0x3e8
        0x3e8
        0x3e8
        0x3e8
        0x3e8
        0x258
        0x320
        0x3e8
        0x3e8
        0x190
        0x258
        0x320
        0x3e8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lorg/cocos2dx/cpp/AppActivity;->_channelId:Ljava/lang/String;

    .line 56
    const-string v0, "3EA938CF2CEDD9C4966B2627E9D1F734"

    iput-object v0, p0, Lorg/cocos2dx/cpp/AppActivity;->DC_ID:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2dx/cpp/AppActivity;->ankouTimes:I

    .line 109
    new-instance v0, Lorg/cocos2dx/cpp/AppActivity$1;

    invoke-direct {v0, p0}, Lorg/cocos2dx/cpp/AppActivity$1;-><init>(Lorg/cocos2dx/cpp/AppActivity;)V

    iput-object v0, p0, Lorg/cocos2dx/cpp/AppActivity;->appHandler:Landroid/os/Handler;

    .line 185
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/cocos2dx/cpp/AppActivity;->mkeyTime:J

    .line 230
    new-instance v0, Lorg/cocos2dx/cpp/AppActivity$2;

    invoke-direct {v0, p0}, Lorg/cocos2dx/cpp/AppActivity$2;-><init>(Lorg/cocos2dx/cpp/AppActivity;)V

    iput-object v0, p0, Lorg/cocos2dx/cpp/AppActivity;->myHandler:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method static synthetic access$0(Lorg/cocos2dx/cpp/AppActivity;I)V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lorg/cocos2dx/cpp/AppActivity;->pay(I)V

    return-void
.end method

.method public static native chargeResult(I)V
.end method

.method public static getIns()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 294
    sget-object v0, Lorg/cocos2dx/cpp/AppActivity;->STATIC_APPACTIVITY:Lorg/cocos2dx/cpp/AppActivity;

    return-object v0
.end method

.method private pay(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 245
    :try_start_0
    sget-object v3, Lorg/cocos2dx/cpp/AppActivity;->priceList:[I

    aget v0, v3, p1

    .line 246
    .local v0, "amout":I
    sget-object v3, Lorg/cocos2dx/cpp/AppActivity;->productNameList:[Ljava/lang/String;

    aget-object v2, v3, p1

    .line 247
    .local v2, "itemName":Ljava/lang/String;
    const/16 v3, 0xd

    if-ne p1, v3, :cond_0

    .line 249
    const/4 v3, 0x1

    invoke-static {v3}, Lorg/cocos2dx/cpp/AppActivity;->sendChargeResult(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v0    # "amout":I
    .end local v2    # "itemName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v1

    .line 260
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static native payCallback(I)V
.end method

.method public static sendChargeResult(I)V
    .locals 2
    .param p0, "result"    # I

    .prologue
    .line 302
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getInstance()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    new-instance v1, Lorg/cocos2dx/cpp/AppActivity$5;

    invoke-direct {v1, p0}, Lorg/cocos2dx/cpp/AppActivity$5;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 308
    return-void
.end method

.method public static native setMusic(I)V
.end method

.method private showInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "con"    # Ljava/lang/String;

    .prologue
    .line 265
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Payment Result"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 266
    return-void
.end method


# virtual methods
.method public doPurchase(I)V
    .locals 2
    .param p1, "payID"    # I

    .prologue
    .line 214
    const/16 v0, 0xe

    if-le p1, v0, :cond_0

    .line 216
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/cocos2dx/cpp/AppActivity;->sendChargeResult(I)V

    .line 228
    :goto_0
    return-void

    .line 220
    :cond_0
    add-int/lit8 v0, p1, -0x1

    sput v0, Lorg/cocos2dx/cpp/AppActivity;->_payId:I

    .line 223
    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity;->myHandler:Landroid/os/Handler;

    sget v1, Lorg/cocos2dx/cpp/AppActivity;->_payId:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public makeReferenceId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RID"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    sput-object p0, Lorg/cocos2dx/cpp/AppActivity;->STATIC_APPACTIVITY:Lorg/cocos2dx/cpp/AppActivity;

    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Lorg/cocos2dx/cpp/AppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lorg/cocos2dx/cpp/AppActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 80
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "channel_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/cocos2dx/cpp/AppActivity;->_channelId:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v2

    iget-object v3, p0, Lorg/cocos2dx/cpp/AppActivity;->appHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0, v3}, Lcom/door/frame/DnPayServer;->init(Landroid/content/Context;Landroid/os/Handler;)V

    .line 86
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/dataeye/DCAgent;->setReportMode(I)V

    .line 87
    const-string v2, "3EA938CF2CEDD9C4966B2627E9D1F734"

    iget-object v3, p0, Lorg/cocos2dx/cpp/AppActivity;->_channelId:Ljava/lang/String;

    invoke-static {p0, v2, v3}, Lcom/dataeye/DCAgent;->initConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v2, 0x0

    iput v2, p0, Lorg/cocos2dx/cpp/AppActivity;->ankouTimes:I

    .line 89
    const-string v2, "EnterGame"

    const-string v3, "success"

    invoke-static {v2, v3}, Lcom/dataeye/DCEvent;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 181
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    .line 182
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 189
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/cocos2dx/cpp/AppActivity;->mkeyTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/cocos2dx/cpp/AppActivity;->mkeyTime:J

    .line 192
    const-string v1, "\u518d\u6309\u4e00\u6b21\u9000\u51fa\u6e38\u620f"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 199
    :goto_0
    return v0

    .line 194
    :cond_0
    invoke-virtual {p0}, Lorg/cocos2dx/cpp/AppActivity;->finish()V

    .line 195
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 199
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 208
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    .line 209
    invoke-static {p0}, Lcom/dataeye/DCAgent;->onPause(Landroid/content/Context;)V

    .line 210
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 203
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    .line 204
    invoke-static {p0}, Lcom/dataeye/DCAgent;->onResume(Landroid/content/Context;)V

    .line 205
    return-void
.end method

.method public showPurchaseData(II)V
    .locals 3
    .param p1, "payID"    # I
    .param p2, "type"    # I

    .prologue
    .line 274
    const/16 v0, 0xe

    if-le p1, v0, :cond_0

    .line 276
    const/16 p1, 0xe

    .line 278
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 279
    if-nez p2, :cond_2

    .line 280
    const-string v0, "all_pay"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "show_pay_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/cocos2dx/cpp/AppActivity;->productNameList:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dataeye/DCEvent;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_1
    :goto_0
    return-void

    .line 281
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "show_pay_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/cocos2dx/cpp/AppActivity;->productNameList:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cancle"

    invoke-static {v0, v1}, Lcom/dataeye/DCEvent;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "show_pay_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/cocos2dx/cpp/AppActivity;->productNameList:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "success"

    invoke-static {v0, v1}, Lcom/dataeye/DCEvent;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_4
    const/4 v0, 0x3

    if-ne p2, v0, :cond_5

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "show_pay_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/cocos2dx/cpp/AppActivity;->productNameList:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fail"

    invoke-static {v0, v1}, Lcom/dataeye/DCEvent;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_5
    const/16 v0, 0x3e7

    if-ne p2, v0, :cond_1

    .line 288
    const-string v0, "EnterGame"

    const-string v1, "success"

    invoke-static {v0, v1}, Lcom/dataeye/DCEvent;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 167
    new-instance v0, Lorg/cocos2dx/cpp/AppActivity$4;

    invoke-direct {v0, p0, p1}, Lorg/cocos2dx/cpp/AppActivity$4;-><init>(Lorg/cocos2dx/cpp/AppActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/cocos2dx/cpp/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 174
    return-void
.end method

.method public staticpay(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 94
    iget v2, p0, Lorg/cocos2dx/cpp/AppActivity;->ankouTimes:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 107
    :goto_0
    return-void

    .line 96
    :cond_0
    iget v2, p0, Lorg/cocos2dx/cpp/AppActivity;->ankouTimes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/cocos2dx/cpp/AppActivity;->ankouTimes:I

    .line 97
    new-instance v0, Lorg/cocos2dx/cpp/AppActivity$3;

    invoke-direct {v0, p0}, Lorg/cocos2dx/cpp/AppActivity$3;-><init>(Lorg/cocos2dx/cpp/AppActivity;)V

    .line 104
    .local v0, "task":Ljava/util/TimerTask;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 106
    .local v1, "timer":Ljava/util/Timer;
    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method
