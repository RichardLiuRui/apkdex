.class public Lcom/dataeye/DCUnityConfigParams;
.super Ljava/lang/Object;


# static fields
.field public static unity_function:Ljava/lang/String;

.field public static unity_object:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/dataeye/DCUnityConfigParams;->unity_object:Ljava/lang/String;

    sput-object v0, Lcom/dataeye/DCUnityConfigParams;->unity_function:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParameterBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    invoke-static {p0, p1}, Lcom/dataeye/DCConfigParams;->getParameterBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getParameterInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/dataeye/DCConfigParams;->getParameterInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getParameterString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/dataeye/DCConfigParams;->getParameterString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setUpdateSuccessCallBack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "objectName"    # Ljava/lang/String;
    .param p1, "functionName"    # Ljava/lang/String;

    .prologue
    sput-object p0, Lcom/dataeye/DCUnityConfigParams;->unity_object:Ljava/lang/String;

    sput-object p1, Lcom/dataeye/DCUnityConfigParams;->unity_function:Ljava/lang/String;

    return-void
.end method

.method public static update()V
    .locals 1

    new-instance v0, Lcom/dataeye/c;

    invoke-direct {v0}, Lcom/dataeye/c;-><init>()V

    invoke-static {v0}, Lcom/dataeye/DCConfigParams;->setConfigParamsUpdateListener(Lcom/dataeye/ConfigParamsUpdateListener;)V

    invoke-static {}, Lcom/dataeye/DCConfigParams;->update()V

    return-void
.end method

.method public static native updateSuccess()V
.end method
