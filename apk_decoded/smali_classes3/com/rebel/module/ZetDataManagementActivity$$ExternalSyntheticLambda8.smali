.class public final synthetic Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/rebel/module/ZetDataManagementActivity;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Ljava/io/File;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/rebel/module/ZetDataManagementActivity;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda8;->f$0:Lcom/rebel/module/ZetDataManagementActivity;

    iput-object p2, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda8;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda8;->f$2:Ljava/io/File;

    iput-object p4, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda8;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda8;->f$0:Lcom/rebel/module/ZetDataManagementActivity;

    iget-object v1, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda8;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda8;->f$2:Ljava/io/File;

    iget-object v3, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda8;->f$3:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/rebel/module/ZetDataManagementActivity;->lambda$addBackupRow$12$com-src-module-ZetDataManagementActivity(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
