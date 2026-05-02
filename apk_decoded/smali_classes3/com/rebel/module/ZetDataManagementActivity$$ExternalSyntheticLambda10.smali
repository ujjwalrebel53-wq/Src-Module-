.class public final synthetic Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/rebel/module/ZetDataManagementActivity;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Landroid/widget/TextView;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Lcom/rebel/module/ZetDataManagementActivity;Ljava/io/File;Landroid/widget/TextView;Ljava/lang/String;Landroid/app/Dialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda10;->f$0:Lcom/rebel/module/ZetDataManagementActivity;

    iput-object p2, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda10;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda10;->f$2:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda10;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda10;->f$4:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda10;->f$0:Lcom/rebel/module/ZetDataManagementActivity;

    iget-object v1, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda10;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda10;->f$2:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda10;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda10;->f$4:Landroid/app/Dialog;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/rebel/module/ZetDataManagementActivity;->lambda$doRestore$17$com-src-module-ZetDataManagementActivity(Ljava/io/File;Landroid/widget/TextView;Ljava/lang/String;Landroid/app/Dialog;)V

    return-void
.end method
