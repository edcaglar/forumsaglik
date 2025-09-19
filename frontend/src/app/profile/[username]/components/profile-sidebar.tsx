import { Card, CardContent } from "@/components/ui/card";
import { Avatar, AvatarImage, AvatarFallback } from "@/components/ui/avatar";
import { Calendar, MapPin, LinkIcon } from "lucide-react";
import { UserCore } from "@/types/user";
import { formatDateTR } from "@/lib/time";

export default function ProfileSidebar({ user }: { user: UserCore }) {
  return (
    <div className="lg:col-span-1">
      <Card className="sticky top-8">
        <CardContent className="p-6">
          {/* Avatar and Basic Info */}
          <div className="text-center mb-6">
            <Avatar className="w-24 h-24 mx-auto mb-4">
              <AvatarImage src={"/placeholder.svg"} alt={user.username} />
              <AvatarFallback className="text-2xl">
                {user.username
                  .split(" ")
                  .map((n) => n[0])
                  .join("")}
              </AvatarFallback>
            </Avatar>
            <h1 className="text-2xl font-bold text-gray-900 mb-1">
              {user.name + " " + user.surname}
            </h1>
            <p className="text-gray-600 mb-2">@{user.username}</p>
          </div>

          {/* Bio */}
          {user.bio && (
            <div className="mb-6">
              <h3 className="font-semibold text-gray-900 mb-2">About</h3>
              <p className="text-gray-600 text-sm leading-relaxed">
                {user.bio}
              </p>
            </div>
          )}

          {/* User Details */}
          <div className="space-y-3">
            <div className="flex items-center text-sm text-gray-600">
              <Calendar className="h-4 w-4 mr-2" />
              Joined at {formatDateTR(user.createdAt)}
            </div>
            {user.location && (
              <div className="flex items-center text-sm text-gray-600">
                <MapPin className="h-4 w-4 mr-2" />
                {user.location}
              </div>
            )}
            {user.website && (
              <div className="flex items-center text-sm text-gray-600">
                <LinkIcon className="h-4 w-4 mr-2" />
                <a
                  href={user.website}
                  target="_blank"
                  rel="noopener noreferrer"
                  className="text-blue-600 hover:underline"
                >
                  Website
                </a>
              </div>
            )}
          </div>
        </CardContent>
      </Card>
    </div>
  );
}
