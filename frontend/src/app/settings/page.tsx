import { Card, CardHeader, CardTitle } from "@/components/ui/card";
import { Settings } from "lucide-react";
import BasicInformationSettings from "./components/basic-information-settings";
import PasswordSettings from "./components/password-settings";
import DeleteAccount from "./components/delete-account";

export default function ProfileSettingsPage() {
  return (
    <main className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
      <div className="space-y-6">
        {/* Header */}
        <Card>
          <CardHeader>
            <div className="flex items-center justify-between">
              <CardTitle className="flex items-center">
                <Settings className="h-5 w-5 mr-2" />
                Profil Ayarları
              </CardTitle>
            </div>
          </CardHeader>
        </Card>

        <BasicInformationSettings />
        <PasswordSettings />
        <DeleteAccount />
      </div>
    </main>
  );
}
